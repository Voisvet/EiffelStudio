
class PERM_RESIZE_CMD 

inherit

	CONTEXT_CMD
		redefine
			context
		end;
	
feature {NONE}

	associated_form: INTEGER is
		do
			Result := Context_const.perm_wind_att_form_nbr
		end;

	c_name: STRING is
		do
			Result := Context_const.perm_resize_cmd_name
		end;

	context: PERM_WIND_C;

	old_resize_policy: BOOLEAN;

	context_work is
		do
			old_resize_policy := context.resize_policy_disabled;
		end;

	context_undo is
		local
			new_resize_policy: BOOLEAN;
		do
			new_resize_policy := context.resize_policy_disabled;
			context.disable_resize_policy (old_resize_policy);
			old_resize_policy := new_resize_policy;
		end;

end
