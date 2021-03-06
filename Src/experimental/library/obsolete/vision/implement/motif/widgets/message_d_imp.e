note

	description: 
		"EiffelVision implementation of Motif message dialog."
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class 
	MESSAGE_D_IMP

inherit

	MESSAGE_D_I;

	DIALOG_IMP;

	MESSAGE_BOX_M
		rename
			make as message_m_make
		undefine
			lower, raise, 
			hide, show, destroy,
			define_cursor_if_shell,
			undefine_cursor_if_shell,
			is_stackable, created_dialog_automatically,
			message_make, message_make_no_auto_unmanage,
			create_widget
		redefine
			parent
		end;

	MEL_MESSAGE_DIALOG
		rename
			make as mel_message_d_make,
			make_no_auto_unmanage as mel_message_d_no_auto,
			foreground_color as mel_foreground_color,
			background_color as mel_background_color,
			background_pixmap as mel_background_pixmap,
			set_background_color as mel_set_background_color,
			set_foreground_color as mel_set_foreground_color,
			set_background_pixmap as mel_set_background_pixmap,
			destroy as mel_destroy,
			set_insensitive as mel_set_insensitive,
			screen as mel_screen,
			is_shown as shown
		undefine
			raise, lower, show, hide
		redefine
			parent
		end

create

	make

feature {NONE} -- Initialization

	make (a_message_dialog: MESSAGE_D; oui_parent: COMPOSITE)
			-- Create a motif dialog message box.
		local
			mc: MEL_COMPOSITE
		do
			mc ?= oui_parent.implementation;
			widget_index := widget_manager.last_inserted_position;
			a_message_dialog.set_dialog_imp (Current);
			mel_message_d_no_auto (a_message_dialog.identifier, mc);
			initialize (parent)
		end;

feature -- Access

    parent: MEL_DIALOG_SHELL;
            -- Dialog shell of the working dialog

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




end -- class MESSAGE_D_IMP

