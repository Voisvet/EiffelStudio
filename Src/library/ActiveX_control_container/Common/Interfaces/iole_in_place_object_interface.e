indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IOLE_IN_PLACE_OBJECT_INTERFACE

inherit
	IOLE_WINDOW_INTERFACE

feature -- Status Report

	in_place_deactivate_user_precondition: BOOLEAN is
			-- User-defined preconditions for `in_place_deactivate'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	uideactivate_user_precondition: BOOLEAN is
			-- User-defined preconditions for `uideactivate'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_object_rects_user_precondition (lprc_pos_rect: TAG_RECT_RECORD; lprc_clip_rect: TAG_RECT_RECORD): BOOLEAN is
			-- User-defined preconditions for `set_object_rects'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	reactivate_and_undo_user_precondition: BOOLEAN is
			-- User-defined preconditions for `reactivate_and_undo'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	in_place_deactivate is
			-- No description available.
		require
			in_place_deactivate_user_precondition: in_place_deactivate_user_precondition
		deferred

		end

	uideactivate is
			-- No description available.
		require
			uideactivate_user_precondition: uideactivate_user_precondition
		deferred

		end

	set_object_rects (lprc_pos_rect: TAG_RECT_RECORD; lprc_clip_rect: TAG_RECT_RECORD) is
			-- No description available.
			-- `lprc_pos_rect' [in].  
			-- `lprc_clip_rect' [in].  
		require
			non_void_lprc_pos_rect: lprc_pos_rect /= Void
			valid_lprc_pos_rect: lprc_pos_rect.item /= default_pointer
			non_void_lprc_clip_rect: lprc_clip_rect /= Void
			valid_lprc_clip_rect: lprc_clip_rect.item /= default_pointer
			set_object_rects_user_precondition: set_object_rects_user_precondition (lprc_pos_rect, lprc_clip_rect)
		deferred

		end

	reactivate_and_undo is
			-- No description available.
		require
			reactivate_and_undo_user_precondition: reactivate_and_undo_user_precondition
		deferred

		end

end -- IOLE_IN_PLACE_OBJECT_INTERFACE

