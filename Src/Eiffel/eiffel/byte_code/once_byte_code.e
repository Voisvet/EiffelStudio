note
	legal: "See notice at end of class."
	status: "See notice at end of class."
-- Byte code for once feature

class ONCE_BYTE_CODE

inherit
	STD_BYTE_CODE
		redefine
			append_once_mark,
			is_once, is_process_relative_once, is_object_relative_once,
			pre_inlined_code, inlined_byte_code_type, generate_once_declaration,
			generate_once_data, generate_once_prologue, generate_once_epilogue
		end

	REFACTORING_HELPER

feature {NONE} -- Status

	internal_is_process_relative_once: BOOLEAN
			-- Is current once to be generated in multithreaded mode has a global once?

feature -- Status

	is_once: BOOLEAN = True;
			-- Is the current byte code relative to a once feature ?

	is_process_relative_once: BOOLEAN
			-- Is current once compiled in multithreaded mode with global status?
		do
			Result := (System.has_multithreaded or else System.il_generation) and then internal_is_process_relative_once
		end

	is_object_relative_once: BOOLEAN
			-- Is current once compiled as per object once?

feature -- Setting

	set_is_process_relative_once
			-- Set once as per process (global).
		do
			is_object_relative_once := False
			internal_is_process_relative_once := True
		ensure
			internal_is_process_relative_once_set: internal_is_process_relative_once
		end

	set_is_thread_relative_once
			-- Set once as per thread (default).
		do
			internal_is_process_relative_once := False
			is_object_relative_once := False
		ensure
			is_thread_relative_once_set: is_thread_relative_once
		end

	set_is_object_relative_once
			-- Set once as per object.
		do
			internal_is_process_relative_once := False
			is_object_relative_once := True
		ensure
			is_object_relative_once_set: is_object_relative_once
		end

feature -- Byte code generation

	append_once_mark (ba: BYTE_ARRAY)
			-- Append byte code indicating a kind of a once routine
			-- (thread-relative once, process-relative once, etc.)
			-- and associated information (code index)
		local
			l_obj_once_info: OBJECT_RELATIVE_ONCE_INFO
			cl: CLASS_C
		do
			if is_object_relative_once then
				cl := context.associated_class
				l_obj_once_info := cl.object_relative_once_info (rout_id)
				ba.append (once_mark_object_relative)
			else
					-- The once mark	
				if is_process_relative_once then
					ba.append (once_mark_process_relative)
				else --| default: if is_thread_relative_once then
					ba.append (once_mark_thread_relative)
				end
					-- Record routine body index
				ba.append_integer_32 (body_index)
			end
			if is_once then
				if attached context.current_feature as f then
					ba.append_integer (f.number_of_breakpoint_slots)
				else
					ba.append_integer (1)
				end
			end
		end

feature {NONE} -- C code generation: implementation

	generate_object_relative_once_result_definition (macro: STRING)
			-- Generate definition of once data using `result_macro_prefix' to define Result and
			-- `data_macro_prefix' to initialize associated variables (if required).
		require
			is_object_relative_once: is_object_relative_once
			macro_not_void: macro /= Void
		local
			type_i: TYPE_A
			c_type_name: STRING
			buf: like buffer
			data_macro_suffix: CHARACTER
			is_basic_type: BOOLEAN
		do
			buf := buffer
				-- Use "EIF_POINTER" C type for TYPED_POINTER and CECIL type name for other types
			type_i := real_type (result_type)
			if type_i.is_void then
				data_macro_suffix := 'V'
			else
				if type_i.is_typed_pointer then
					c_type_name := "EIF_POINTER"
				else
					c_type_name := type_i.c_type.c_string
				end
				if type_i.c_type.is_reference then
						-- Reference result type
					data_macro_suffix := 'R'
				else
						-- Basic result type
					data_macro_suffix := 'B'
					is_basic_type := True
				end
				if context.workbench_mode or else context.result_used then
						-- Generate Result definition
					buf.put_new_line_only
					buf.put_string ("#define ")
					buf.put_string (macro)
					buf.put_character ('%T')
					if is_basic_type then
						buf.put_string (c_type_name)
					else
						buf.put_string ("EIF_REFERENCE")
					end
				end
			end
		end

	generate_once_result_definition (result_macro_prefix: STRING; data_macro_prefix: STRING)
			-- Generate definition of once data using `result_macro_prefix' to define Result and
			-- `data_macro_prefix' to initialize associated variables (if required).
		require
			is_not_object_relative_once: not is_object_relative_once
			result_macro_prefix_not_void: result_macro_prefix /= Void
			data_macro_prefix_not_void: data_macro_prefix /= Void
		local
			type_i: TYPE_A
			c_type_name: STRING
			buf: like buffer
			data_macro_suffix: CHARACTER
			is_basic_type: BOOLEAN
		do
			buf := buffer
				-- Use "EIF_POINTER" C type for TYPED_POINTER and CECIL type name for other types
			type_i := real_type (result_type)
			if type_i.is_void then
				data_macro_suffix := 'V'
			else
				if type_i.is_typed_pointer then
					c_type_name := "EIF_POINTER"
				else
					c_type_name := type_i.c_type.c_string
				end
				if type_i.c_type.is_reference then
						-- Reference result type
					data_macro_suffix := 'R'
				else
						-- Basic result type
					data_macro_suffix := 'B'
					is_basic_type := True
				end
				if context.workbench_mode or else context.result_used then
						-- Generate Result definition
					buf.put_new_line_only
					buf.put_string ("#define Result ")
					buf.put_string (result_macro_prefix)
					buf.put_character (data_macro_suffix)
					if is_basic_type then
							-- Specify basic result type
						buf.put_character ('(')
						buf.put_string (c_type_name)
						buf.put_character (')')
					end
				end
			end
			buf.put_new_line
			buf.put_string (data_macro_prefix)
			buf.put_character (data_macro_suffix)
			buf.put_character ('(')
			if is_basic_type then
				buf.put_string (c_type_name)
				buf.put_string ({C_CONST}.comma_space)
			end
		end

feature -- C code generation

	generate_once_declaration (a_name: STRING; a_type: TYPE_C)
			-- Generate declaration of static fields that keep once result or point to it
			--| for thread and process relative once,
			--| not object relative once which does not need static fields
		local
			buf: GENERATION_BUFFER
			declaration_macro_prefix: STRING
		do
				-- Register once code index
			if is_process_relative_once then
				context.add_process_relative_once (a_type, body_index)
			else --| default: if is_thread_relative_once then
				check process_or_thread_relative: is_thread_relative_once end
				context.add_thread_relative_once (a_type, body_index)
			end
			if context.workbench_mode then
					-- Once result is accessed by index
				buf := buffer
				buf.put_new_line
				buf.put_string ("RTOID (")
				buf.put_string (a_name)
				buf.put_character (')')
			else
					-- Once result is kept in global static fields
				buf := context.header_buffer
				if is_process_relative_once then
					declaration_macro_prefix := "RTOPH"
				else --| default: if is_thread_relative_once then
					if not System.has_multithreaded then
						declaration_macro_prefix := "RTOSH"
					end
				end
				if declaration_macro_prefix /= Void then
						-- Generate static declaration and definition of `once_done'
						-- and `once_result' variables used to find out if once has
						-- already been computed or not.
					buf.put_new_line
					buf.put_string (declaration_macro_prefix)
					if a_type.is_void then
						buf.put_string ("P (")
					else
						buf.put_string ("F (")
						buf.put_string (a_type.c_string)
						buf.put_character (',')
					end
					buf.put_integer (body_index)
					buf.put_character (')')
				end
			end
		end

	generate_once_data (name: STRING)
			-- Generate once-specific data
		local
			buf: like buffer
		do
			buf := buffer
			if not is_object_relative_once then
				if context.workbench_mode then
					if is_process_relative_once then
						generate_once_result_definition ("RTOQR", "RTOQD")
					else --| default: if is_thread_relative_once then
						generate_once_result_definition ("RTOTR", "RTOTD")
					end
					buf.put_string (generated_c_feature_name)
					buf.put_two_character (')', ';')
				elseif is_thread_relative_once and then System.has_multithreaded then
						-- Generate locals for thread-relative once routine
					generate_once_result_definition ("RTOTR", "RTOUD")
					buf.put_integer (context.thread_relative_once_index (body_index))
					buf.put_character (')')
				end
			end
			init_dftype
			init_dtype
			buf.put_new_line_only
		end

	generate_once_prologue (name: STRING)
			-- Generate test at the head of once routines
		local
			buf: like buffer
		do
			buf := buffer
			if is_object_relative_once then
				--| object relative once are now handled with _B objects
				--| And not anymore with specific generated code like other onces
			else
				if context.workbench_mode then
					if is_process_relative_once then
							-- Once is accessed using code index
						buf.put_new_line
						buf.put_string ("RTOQP;")
						if context.result_used then
							if real_type(result_type).c_type.is_reference then
								buf.put_new_line
								buf.put_string ("RTOC_GLOBAL(Result);")
							end
						end
					else --| default: if is_thread_relative_once then
							-- Once is accessed using local variable
						buf.put_new_line
						buf.put_string ("RTOTP;")
					end
				elseif is_process_relative_once then
						-- Once is accessed using code index
					buf.put_new_line
					buf.put_string ("RTOPP (")
					buf.put_integer (body_index)
					buf.put_string (");")
					if context.result_used then
						buf.put_new_line_only
						buf.put_string ("#define Result RTOPR(")
						buf.put_integer (body_index)
						buf.put_character (')')
						if real_type(result_type).c_type.is_reference then
							buf.put_new_line
							buf.put_string ("RTOC_GLOBAL(Result);")
						end
					end
				else --| default: if is_thread_relative_once then
					if System.has_multithreaded then
							-- Once is accessed using pre-calculated once index
						buf.put_new_line
						buf.put_string ("RTOTP;")
					else
							-- Once is accessed using code index
						buf.put_new_line
						buf.put_string ("RTOSP (")
						buf.put_integer (body_index)
						buf.put_string (");")
						if context.result_used then
							buf.put_new_line_only
							buf.put_string ("#define Result RTOSR(")
							buf.put_integer (body_index)
							buf.put_character (')')
							if real_type(result_type).c_type.is_reference then
								buf.put_new_line
								buf.put_string ("RTOC_NEW(Result);")
							end
						end
					end
				end
			end
		end

	generate_once_epilogue (a_name: STRING)
			-- Generate end of a once block.
		local
			buf: like buffer
		do
				-- See `generate_once_prologue' for details
			buf := context.buffer
			if is_object_relative_once then
				--| object relative once are now handled with _B objects
				--| And not anymore with specific generated code like other onces
			else
				buf.put_new_line
				if context.workbench_mode then
					if is_process_relative_once then
						buf.put_string ("RTOQE;")
					else --| default: if is_thread_relative_once then
						buf.put_string ("RTOTE;")
					end
				elseif is_process_relative_once then
					buf.put_string ("RTOPE (");
					buf.put_integer (body_index)
					buf.put_string (");")
				else --| default: if is_thread_relative_once then
					if System.has_multithreaded then
						buf.put_string ("RTOTE;")
					else
						buf.put_string ("RTOSE (")
						buf.put_integer (body_index)
						buf.put_string (");")
					end
				end
			end
		end

feature -- Inlining

	pre_inlined_code: like Current
			-- Never called!!! (a once function cannot be inlined)
		do
		end

	inlined_byte_code_type: INLINED_ONCE_BYTE_CODE
			-- Type for `inlined_byte_code'
		do
		end

feature {NONE} -- Convenience

	result_name (a_name: STRING): STRING
			-- Once result variable name using `a_name' as prefix
		require
			a_name_not_void: a_name /= Void
		do
			create Result.make (a_name.count + 7)
			Result.append (a_name)
			Result.append ("_result")
		ensure
			result_name_not_void: Result /= Void
		end

	done_name (a_name: STRING): STRING
			-- Once result variable name using `a_name' as prefix
		require
			a_name_not_void: a_name /= Void
		do
			create Result.make (a_name.count + 5)
			Result.append (a_name)
			Result.append ("_done")
		ensure
			done_name_not_void: Result /= Void
		end

	mutex_name (a_name: STRING): STRING
			-- Once mutex variable name using `a_name' as prefix
		require
			a_name_not_void: a_name /= Void
		do
			create Result.make (a_name.count + 6)
			Result.append (a_name)
			Result.append ("_mutex")
		ensure
			mutex_name_not_void: Result /= Void
		end

note
	copyright:	"Copyright (c) 1984-2010, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
