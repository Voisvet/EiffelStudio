indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IOLE_IN_PLACE_ACTIVE_OBJECT_INTERFACE

inherit
	IOLE_WINDOW_INTERFACE

feature -- Status Report

	remote_translate_accelerator_user_precondition: BOOLEAN is
			-- User-defined preconditions for `remote_translate_accelerator'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	on_frame_window_activate_user_precondition (f_activate: INTEGER): BOOLEAN is
			-- User-defined preconditions for `on_frame_window_activate'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	on_doc_window_activate_user_precondition (f_activate: INTEGER): BOOLEAN is
			-- User-defined preconditions for `on_doc_window_activate'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_resize_border_user_precondition (prc_border: TAG_RECT_RECORD; riid: ECOM_GUID; p_uiwindow: IOLE_IN_PLACE_UIWINDOW_INTERFACE; f_frame_window: INTEGER): BOOLEAN is
			-- User-defined preconditions for `remote_resize_border'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	enable_modeless_user_precondition (f_enable: INTEGER): BOOLEAN is
			-- User-defined preconditions for `enable_modeless'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	remote_translate_accelerator is
			-- No description available.
		require
			remote_translate_accelerator_user_precondition: remote_translate_accelerator_user_precondition
		deferred

		end

	on_frame_window_activate (f_activate: INTEGER) is
			-- No description available.
			-- `f_activate' [in].  
		require
			on_frame_window_activate_user_precondition: on_frame_window_activate_user_precondition (f_activate)
		deferred

		end

	on_doc_window_activate (f_activate: INTEGER) is
			-- No description available.
			-- `f_activate' [in].  
		require
			on_doc_window_activate_user_precondition: on_doc_window_activate_user_precondition (f_activate)
		deferred

		end

	remote_resize_border (prc_border: TAG_RECT_RECORD; riid: ECOM_GUID; p_uiwindow: IOLE_IN_PLACE_UIWINDOW_INTERFACE; f_frame_window: INTEGER) is
			-- No description available.
			-- `prc_border' [in].  
			-- `riid' [in].  
			-- `p_uiwindow' [in].  
			-- `f_frame_window' [in].  
		require
			non_void_prc_border: prc_border /= Void
			valid_prc_border: prc_border.item /= default_pointer
			non_void_riid: riid /= Void
			valid_riid: riid.item /= default_pointer
			remote_resize_border_user_precondition: remote_resize_border_user_precondition (prc_border, riid, p_uiwindow, f_frame_window)
		deferred

		end

	enable_modeless (f_enable: INTEGER) is
			-- No description available.
			-- `f_enable' [in].  
		require
			enable_modeless_user_precondition: enable_modeless_user_precondition (f_enable)
		deferred

		end

end -- IOLE_IN_PLACE_ACTIVE_OBJECT_INTERFACE

