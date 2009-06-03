note
	description: "Control interfaces. Help file: "
	legal: "See notice at end of class."
	status: "See notice at end of class."
	generator: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IOLE_IN_PLACE_FRAME_INTERFACE

inherit
	IOLE_IN_PLACE_UIWINDOW_INTERFACE

feature -- Status Report

	insert_menus_user_precondition (hmenu_shared: POINTER; lp_menu_widths: TAG_OLE_MENU_GROUP_WIDTHS_RECORD): BOOLEAN
			-- User-defined preconditions for `insert_menus'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_menu_user_precondition (hmenu_shared: POINTER; holemenu: POINTER; hwnd_active_object: POINTER): BOOLEAN
			-- User-defined preconditions for `set_menu'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remove_menus_user_precondition (hmenu_shared: POINTER): BOOLEAN
			-- User-defined preconditions for `remove_menus'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_status_text_user_precondition (psz_status_text: STRING): BOOLEAN
			-- User-defined preconditions for `set_status_text'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	enable_modeless_user_precondition (f_enable: INTEGER): BOOLEAN
			-- User-defined preconditions for `enable_modeless'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	translate_accelerator_user_precondition (lpmsg: TAG_MSG_RECORD; w_id: INTEGER): BOOLEAN
			-- User-defined preconditions for `translate_accelerator'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	insert_menus (hmenu_shared: POINTER; lp_menu_widths: TAG_OLE_MENU_GROUP_WIDTHS_RECORD)
			-- No description available.
			-- `hmenu_shared' [in].  
			-- `lp_menu_widths' [in, out].  
		require
			non_void_lp_menu_widths: lp_menu_widths /= Void
			valid_lp_menu_widths: lp_menu_widths.item /= default_pointer
			insert_menus_user_precondition: insert_menus_user_precondition (hmenu_shared, lp_menu_widths)
		deferred

		end

	set_menu (hmenu_shared: POINTER; holemenu: POINTER; hwnd_active_object: POINTER)
			-- No description available.
			-- `hmenu_shared' [in].  
			-- `holemenu' [in].  
			-- `hwnd_active_object' [in].  
		require
			non_void_holemenu: holemenu /= Void
			set_menu_user_precondition: set_menu_user_precondition (hmenu_shared, holemenu, hwnd_active_object)
		deferred

		end

	remove_menus (hmenu_shared: POINTER)
			-- No description available.
			-- `hmenu_shared' [in].  
		require
			remove_menus_user_precondition: remove_menus_user_precondition (hmenu_shared)
		deferred

		end

	set_status_text (psz_status_text: STRING)
			-- No description available.
			-- `psz_status_text' [in].  
		require
			set_status_text_user_precondition: set_status_text_user_precondition (psz_status_text)
		deferred

		end

	enable_modeless (f_enable: INTEGER)
			-- No description available.
			-- `f_enable' [in].  
		require
			enable_modeless_user_precondition: enable_modeless_user_precondition (f_enable)
		deferred

		end

	translate_accelerator (lpmsg: TAG_MSG_RECORD; w_id: INTEGER)
			-- No description available.
			-- `lpmsg' [in].  
			-- `w_id' [in].  
		require
			non_void_lpmsg: lpmsg /= Void
			valid_lpmsg: lpmsg.item /= default_pointer
			translate_accelerator_user_precondition: translate_accelerator_user_precondition (lpmsg, w_id)
		deferred

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




end -- IOLE_IN_PLACE_FRAME_INTERFACE

