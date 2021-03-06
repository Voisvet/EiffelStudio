note
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	SHOW_SELECTION_DIALOG

inherit
	SHOW_SELECTION_DIALOG_IMP

feature {NONE} -- Initialization

	user_initialization
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		do
		end

feature -- Status setting

	populate (info_list: ARRAYED_LIST [STRING])
			-- populate `information_list' with items corresponding to `info_list'.
		require
			info_list_not_void: info_list /= Void
		local
			list_item: EV_LIST_ITEM
		do
			from
				info_list.start
			until
				info_list.off
			loop
				create list_item.make_with_text (info_list.item)
				information_list.extend (list_item)
				info_list.forth
			end
		end
		

feature {NONE} -- Implementation

	
	close_button_selected
			-- Called by `select_actions' of `close_button'.
		do
			destroy
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


end -- class SHOW_SELECTION_DIALOG

