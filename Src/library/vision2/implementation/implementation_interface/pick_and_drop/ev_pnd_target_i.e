indexing
	description: "Implementation interface of a pick and drop target."
	status: "See notice at end of class"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	EV_PND_TARGET_I

inherit
	EV_ANY_I

feature -- Access

	add_pnd_command (type: EV_PND_TYPE; cmd: EV_COMMAND; args: EV_ARGUMENT) is
			-- Add 'cmd' to the list of commands to be executed when
			-- a data of type `type' is dropped into current target.
		require
			exists: not destroyed
			valid_type: type /= Void
			valid_command: cmd /= Void
		deferred
		end


	add_default_pnd_command (cmd: EV_COMMAND; args: EV_ARGUMENT) is
			-- Add 'cmd' to the list of commands to be executed when
			-- any data is dropped into current target.
		require
			exists: not destroyed
			valid_command: cmd /= Void
		deferred
		end

end -- class EV_PND_TARGET_I

--|----------------------------------------------------------------
--| EiffelVision: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-1998 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building, 2nd floor
--| 270 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

