-- This file has been generated by EWG. Do not edit. Changes will be lost!

class CONTROL_DEF_PROC_PTR_DISPATCHER

inherit

	ANY

	EWG_CARBON_CALLBACK_C_GLUE_CODE_FUNCTIONS_EXTERNAL
		export {NONE} all end

create

	make

feature {NONE}

	make (a_callback: CONTROL_DEF_PROC_PTR_CALLBACK) is
		require
			a_callback_not_void: a_callback /= Void
		do
			callback := a_callback
			set_control_def_proc_ptr_entry_external (Current, $on_callback)
		end

feature {ANY}

	callback: CONTROL_DEF_PROC_PTR_CALLBACK

	c_dispatcher: POINTER is
		do
			Result := get_control_def_proc_ptr_stub_external
		end

feature {NONE} -- Implementation

	frozen on_callback (a_varcode: INTEGER; a_thecontrol: POINTER; a_message: INTEGER; a_param: INTEGER): INTEGER is 
		do
			Result := callback.on_callback (a_varcode, a_thecontrol, a_message, a_param) 
		end

invariant

	 callback_not_void: callback /= Void

end
