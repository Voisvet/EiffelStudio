indexing
	description: "Dotnet debug value associated with Unknown type value"
	author: "$Author$"
	date: "$Date$"
	revision: "$Revision$"

class
	EIFNET_DEBUG_UNKNOWN_TYPE_VALUE

inherit
	EIFNET_ABSTRACT_DEBUG_VALUE
		redefine
			kind, address
		end
	
	EIFNET_EXPORTER
		export
			{NONE} all
		undefine
			is_equal
		end			

	DEBUG_VALUE_EXPORTER
		export
			{NONE} all
		undefine
			is_equal
		end				

	SHARED_EIFNET_DEBUG_VALUE_FORMATTER		
		export
			{NONE} all
		undefine
			is_equal
		end	

	SHARED_IL_DEBUG_INFO_RECORDER
		export
			{NONE} all
		undefine
			is_equal
		end				

create {RECV_VALUE, ATTR_REQUEST,CALL_STACK_ELEMENT, DEBUG_VALUE_EXPORTER}
	make
--, make_attribute
	
feature {NONE} -- Initialization

	make (a_referenced_value: like icd_referenced_value; a_prepared_value: like icd_value) is
			-- 	Set `value' to `v'.
		require
			a_referenced_value_not_void: a_referenced_value /= Void
			a_prepared_value_not_void: a_prepared_value /= Void
		do
			set_default_name
			init_dotnet_data (a_referenced_value, a_prepared_value)
			address := icd_value_info.address_as_hex_string
			register_dotnet_data			
		ensure
			value_set: icd_value = a_prepared_value
		end

feature -- Access

	address: STRING
			-- Object's address.

	dynamic_class: CLASS_C is
			-- Find corresponding CLASS_C to type represented by `value'.
		do
			Result := Eiffel_system.system.system_object_class.compiled_class
		end

	dump_value: DUMP_VALUE is
			-- Dump_value corresponding to `Current'.
		do
			create Result.make_manifest_string ("ERROR: Unknown type", dynamic_class)
		end

feature {ABSTRACT_DEBUG_VALUE} -- Output

	append_type_and_value (st: STRUCTURED_TEXT) is 
			-- Append type and value of Current to `st'.
		do 
			st.add_string ("ERROR: Unknown type")
			st.add_string (Equal_sign_str);
			st.add_string (address)
		end

feature {NONE} -- Output

	append_value (st: STRUCTURED_TEXT) is
			-- Append only the value of Current to `st'.
		do
			st.add_string (address)
		end

	output_value: STRING is
			-- A STRING representation of the value of `Current'.
		do
			Result := address
		end

	type_and_value: STRING is
			-- Return a string representing `Current'.
		local
			ec: CLASS_C;
		do
			ec := dynamic_class;
			if ec /= Void then
				create Result.make (60)
				Result.append ("Error: Unknown type")
				Result.append (Left_address_delim)
				Result.append (address)
				Result.append (Right_address_delim)
			else
				create Result.make (20)
				Result.append (Any_class.name_in_upper)
				Result.append (Is_unknown)
			end
		end
		
feature -- Output

	is_dummy_value: BOOLEAN is False
			-- Does `Current' represent a object value or for instance an error message
		
	expandable: BOOLEAN is False
			-- Does `Current' have sub-items? (Is it a non void reference, a special object, ...)

	children: DS_LIST [ABSTRACT_DEBUG_VALUE] is
			-- List of all sub-items of `Current'. 
			-- May be void if there are no children.
			-- Generated on demand.
			-- (sorted by name)
		do
			Result := Void
		end
		
	kind: INTEGER is
			-- Actual type of `Current'. cf possible codes underneath.
			-- Used to display the corresponding icon.
		do
			Result := Immediate_value
		end

end

