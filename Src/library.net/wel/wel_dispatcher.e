indexing
	description: "Receives and dispatch the Windows messages to the Eiffel objects."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	WEL_DISPATCHER

inherit
	WEL_WINDOW_MANAGER
		export
			{NONE} all
		end

	DISPOSABLE

	WEL_WM_CONSTANTS
		export
			{NONE} all
		end

	WEL_EN_CONSTANTS	
		-- debug

create
	make

feature {NONE} -- Initialization

	make is
			-- Initialize the C variables
		do
			create window_delegate.make (Current, $window_procedure)
			create dialog_delegate.make (Current, $dialog_procedure)
			cwel_set_window_procedure_address (window_delegate)
			cwel_set_dialog_procedure_address (dialog_delegate)
			dispatcher_object := feature {GC_HANDLE}.alloc (Current)
			cwel_set_dispatcher_object (feature {GC_HANDLE}.to_pointer (dispatcher_object))
		end

feature {NONE} -- Implementation

	frozen window_procedure (hwnd: POINTER; msg: INTEGER; wparam, lparam: POINTER): POINTER is
			-- Window messages dispatcher routine
		local
			window: WEL_WINDOW
			returned_value: POINTER
			has_return_value: BOOLEAN
		do
			window := window_of_item (hwnd)
			debug ("win_dispatcher")
				if window /= Void then
					io.print (" after look at windows table ")
					io.print (window.generating_type)
					io.new_line
				end
			end
			if window /= Void and then window.exists then
				window.increment_level

				Result := window.process_message (hwnd, msg, wparam, lparam)
					--| Store `message_return_value' and `has_return_value' for later
					--| use, since `call_default_window_procedure' can reset their value.
				if
					window.has_return_value
				then
					returned_value := window.message_return_value
					has_return_value := window.has_return_value
				end

				if window.default_processing then
					Result := window.call_default_window_procedure (hwnd, msg, wparam, lparam)
				end

				if has_return_value then
					Result := returned_value
				end

				window.decrement_level
			else
				Result := cwin_def_window_proc (hwnd, msg, wparam, lparam)
			end
		end

	frozen dialog_procedure (hwnd: POINTER; msg: INTEGER; wparam, lparam: POINTER): POINTER is
			-- Dialog box messages dispatcher routine
		local
			window: WEL_WINDOW
			last_result: POINTER
		do
			debug ("dlg_dispatcher")
				io.print ("in dlg_proc ")
				io.print (hwnd)
				io.print (' ')
				io.print (msg)
				io.print (' ')
				io.print (msg = Wm_initdialog)
				io.new_line
			end
			if msg = Wm_initdialog then
				window := new_dialog
				if window /= Void then
					new_dialog_cell.put (Void)
					window.increment_level
	
					-- Special case for the message
					-- Wm_initdialog. We set the hwnd value
					-- to the object because this value
					-- was unknown until now.
					--| Since it is not possible to check
					--| if `set_focus' from WEL_WINDOW has been
					--| called, Result is set to `1'.
					--| As a result, any call to `set_focus' in
					--| `setup_dialog' from WEL_DIALOG is useless.
					window.set_item (hwnd)
					register_window (window)
					Result := window.process_message (hwnd, msg, wparam, lparam)
					window.decrement_level
				end
				Result := to_lresult (1)
			else
				window := window_of_item (hwnd)
				if window /= Void and window.exists then
					window.increment_level
					last_result := window.process_message (hwnd, msg, wparam, lparam)
					if window.has_return_value then
						Result := window.message_return_value
					else
						if not window.default_processing then
							Result := to_lresult (1)
						else
							Result := to_lresult (0)
						end
					end
					window.decrement_level
				end
			end
		end

feature {NONE} -- Implementation

	dispatcher_object: GC_HANDLE
			-- Handle to Current.
			
	window_delegate, dialog_delegate: WEL_DISPATCHER_DELEGATE
			-- Delegate for callbacks.
			
	dispose is
			-- Wean `Current'
		local
			null: POINTER
		do
			dispatcher_object.free
			cwel_set_dispatcher_object (null)
		end

feature {NONE} -- Externals

	cwel_temp_dialog_value: POINTER is
		external
			"C [macro %"wel.h%"]: EIF_POINTER"
		end

	cwel_set_window_procedure_address (address: WEL_DISPATCHER_DELEGATE) is
		external
			"C [macro %"disptchr.h%"] (EIF_POINTER)"
		end

	cwel_set_dialog_procedure_address (address: WEL_DISPATCHER_DELEGATE) is
		external
			"C [macro %"disptchr.h%"] (EIF_POINTER)"
		end

	cwel_set_dispatcher_object (dispatcher: POINTER) is
		external
			"C [macro %"disptchr.h%"]"
		end

	cwin_def_window_proc (hwnd: POINTER; msg: INTEGER; wparam, lparam: POINTER): POINTER is
			-- SDK DefWindowProc
		external
			"C [macro <windows.h>] (HWND, UINT, WPARAM, LPARAM): EIF_INTEGER"
		alias
			"DefWindowProc"
		end

end -- class WEL_DISPATCHER

--|----------------------------------------------------------------
--| Windows Eiffel Library: library of reusable components for ISE Eiffel.
--| Copyright (C) 1985-2004 Eiffel Software. All rights reserved.
--| Duplication and distribution prohibited.  May be used only with
--| ISE Eiffel, under terms of user license.
--| Contact Eiffel Software for any other use.
--|
--| Interactive Software Engineering Inc.
--| dba Eiffel Software
--| 356 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Contact us at: http://www.eiffel.com/general/email.html
--| Customer support: http://support.eiffel.com
--| For latest info on our award winning products, visit:
--|	http://www.eiffel.com
--|----------------------------------------------------------------

