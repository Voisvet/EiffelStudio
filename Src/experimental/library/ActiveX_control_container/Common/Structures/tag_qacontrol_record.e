note
	description: "Control interfaces. Help file: "
	legal: "See notice at end of class."
	status: "See notice at end of class."
	generator: "Automatically generated by the EiffelCOM Wizard."

class
	TAG_QACONTROL_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

create
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make
			-- Make.
		do
			Precursor {ECOM_STRUCTURE}
		end

	make_from_pointer (a_pointer: POINTER)
			-- Make from pointer.
		do
			make_by_pointer (a_pointer)
		end

feature -- Access

	cb_size: INTEGER
			-- No description available.
		do
			Result := ccom_tag_qacontrol_cb_size (item)
		end

	dw_misc_status: INTEGER
			-- No description available.
		do
			Result := ccom_tag_qacontrol_dw_misc_status (item)
		end

	dw_view_status: INTEGER
			-- No description available.
		do
			Result := ccom_tag_qacontrol_dw_view_status (item)
		end

	dw_event_cookie: INTEGER
			-- No description available.
		do
			Result := ccom_tag_qacontrol_dw_event_cookie (item)
		end

	dw_prop_notify_cookie: INTEGER
			-- No description available.
		do
			Result := ccom_tag_qacontrol_dw_prop_notify_cookie (item)
		end

	dw_pointer_activation_policy: INTEGER
			-- No description available.
		do
			Result := ccom_tag_qacontrol_dw_pointer_activation_policy (item)
		end

feature -- Measurement

	structure_size: INTEGER
			-- Size of structure
		do
			Result := c_size_of_tag_qacontrol
		end

feature -- Basic Operations

	set_cb_size (a_cb_size: INTEGER)
			-- Set `cb_size' with `a_cb_size'.
		do
			ccom_tag_qacontrol_set_cb_size (item, a_cb_size)
		end

	set_dw_misc_status (a_dw_misc_status: INTEGER)
			-- Set `dw_misc_status' with `a_dw_misc_status'.
		do
			ccom_tag_qacontrol_set_dw_misc_status (item, a_dw_misc_status)
		end

	set_dw_view_status (a_dw_view_status: INTEGER)
			-- Set `dw_view_status' with `a_dw_view_status'.
		do
			ccom_tag_qacontrol_set_dw_view_status (item, a_dw_view_status)
		end

	set_dw_event_cookie (a_dw_event_cookie: INTEGER)
			-- Set `dw_event_cookie' with `a_dw_event_cookie'.
		do
			ccom_tag_qacontrol_set_dw_event_cookie (item, a_dw_event_cookie)
		end

	set_dw_prop_notify_cookie (a_dw_prop_notify_cookie: INTEGER)
			-- Set `dw_prop_notify_cookie' with `a_dw_prop_notify_cookie'.
		do
			ccom_tag_qacontrol_set_dw_prop_notify_cookie (item, a_dw_prop_notify_cookie)
		end

	set_dw_pointer_activation_policy (a_dw_pointer_activation_policy: INTEGER)
			-- Set `dw_pointer_activation_policy' with `a_dw_pointer_activation_policy'.
		do
			ccom_tag_qacontrol_set_dw_pointer_activation_policy (item, a_dw_pointer_activation_policy)
		end

feature {NONE}  -- Externals

	c_size_of_tag_qacontrol: INTEGER
			-- Size of structure
		external
			"C [macro %"ecom_control_library_tagQACONTROL_s.h%"]"
		alias
			"sizeof(ecom_control_library::tagQACONTROL)"
		end

	ccom_tag_qacontrol_cb_size (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *):EIF_INTEGER"
		end

	ccom_tag_qacontrol_set_cb_size (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *, ULONG)"
		end

	ccom_tag_qacontrol_dw_misc_status (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *):EIF_INTEGER"
		end

	ccom_tag_qacontrol_set_dw_misc_status (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *, ULONG)"
		end

	ccom_tag_qacontrol_dw_view_status (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *):EIF_INTEGER"
		end

	ccom_tag_qacontrol_set_dw_view_status (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *, ULONG)"
		end

	ccom_tag_qacontrol_dw_event_cookie (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *):EIF_INTEGER"
		end

	ccom_tag_qacontrol_set_dw_event_cookie (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *, ULONG)"
		end

	ccom_tag_qacontrol_dw_prop_notify_cookie (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *):EIF_INTEGER"
		end

	ccom_tag_qacontrol_set_dw_prop_notify_cookie (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *, ULONG)"
		end

	ccom_tag_qacontrol_dw_pointer_activation_policy (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *):EIF_INTEGER"
		end

	ccom_tag_qacontrol_set_dw_pointer_activation_policy (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagQACONTROL_s_impl.h%"](ecom_control_library::tagQACONTROL *, ULONG)"
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- TAG_QACONTROL_RECORD

