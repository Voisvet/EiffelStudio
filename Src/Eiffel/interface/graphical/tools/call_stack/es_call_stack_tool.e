note
	description: "[
		Tool descriptor for the debugger's execution call stack tool.
	]"
	legal: "See notice at end of class."
	status: "See notice at end of class.";
	date: "$date$";
	revision: "$revision$"

frozen class
	ES_CALL_STACK_TOOL

inherit
	ES_DEBUGGER_STONABLE_TOOL [ES_CALL_STACK_TOOL_PANEL]

create {NONE}
	default_create

feature {DEBUGGER_MANAGER} -- Access

	activate_execution_replay_mode (b: BOOLEAN; levlim: INTEGER_32)
			-- Activate or not the execution replay mode according to `b'
			-- and using `levlim' as level limit
		do
			if is_tool_instantiated then
				if panel.is_initialized then
					panel.activate_execution_replay_mode (b, levlim)
				end
				if b then
					show (False)
				end
			end
		end

	set_execution_replay_level (dep: INTEGER_32; deplim: INTEGER_32; rep: REPLAYED_CALL_STACK_ELEMENT)
			-- Set execution replay active level on the panel
		require
			app_is_stopped: debugger_manager.safe_application_is_stopped
			in_range: deplim > 0 implies dep <= deplim
		do
			if is_tool_instantiated then
				panel.set_execution_replay_level (dep, deplim, rep)
			end
		end

feature -- Access

	icon: EV_PIXEL_BUFFER
			-- <Precursor>
		do
			Result := stock_pixmaps.tool_call_stack_icon_buffer
		end

	icon_pixmap: EV_PIXMAP
			-- <Precursor>
		do
			Result := stock_pixmaps.tool_call_stack_icon
		end

	title: attached STRING_32
			-- <Precursor>
		do
			Result := locale_formatter.translation (t_tool_title)
		end

feature {NONE} -- Status report

	is_stone_usable_internal (a_stone: attached like stone): BOOLEAN
			-- <Precursor>
		do
			Result := attached {CALL_STACK_STONE} a_stone as cst or else attached {FEATURE_STONE} a_stone as fst
		end

feature {NONE} -- Factory

	new_tool: attached ES_CALL_STACK_TOOL_PANEL
			-- <Precursor>
		do
			create Result.make (window, Current)
		end

feature {NONE} -- Internationalization

	t_tool_title: STRING = "Call Stack"

;note
	copyright:	"Copyright (c) 1984-2014, Eiffel Software"
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
