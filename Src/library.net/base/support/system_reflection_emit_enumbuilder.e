indexing
	Generator: "Eiffel Emitter 2.5b2"
	external_name: "System.Reflection.Emit.EnumBuilder"

frozen external class
	SYSTEM_REFLECTION_EMIT_ENUMBUILDER

inherit
	SYSTEM_TYPE
		redefine
			get_interface_map,
			is_value_type_impl,
			get_member_with_type_and_constraints,
			get_events,
			get_reflected_type,
			get_declaring_type
		end
	SYSTEM_REFLECTION_ICUSTOMATTRIBUTEPROVIDER
	SYSTEM_REFLECTION_IREFLECT
		rename
			invoke_member as invoke_member_with_culture_and_modifiers,
			get_members as get_all_members,
			get_member as get_member_with_constraints,
			get_properties as get_all_properties,
			get_property as get_property_with_constraints,
			get_fields as get_all_fields,
			get_field as get_field_with_constraints,
			get_methods as get_all_methods,
			get_method as get_method_with_constraints
		end

create {NONE}

feature -- Access

	get_full_name: STRING is
		external
			"IL signature (): System.String use System.Reflection.Emit.EnumBuilder"
		alias
			"get_FullName"
		end

	get_reflected_type: SYSTEM_TYPE is
		external
			"IL signature (): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"get_ReflectedType"
		end

	get_assembly: SYSTEM_REFLECTION_ASSEMBLY is
		external
			"IL signature (): System.Reflection.Assembly use System.Reflection.Emit.EnumBuilder"
		alias
			"get_Assembly"
		end

	get_underlying_system_type: SYSTEM_TYPE is
		external
			"IL signature (): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"get_UnderlyingSystemType"
		end

	get_declaring_type: SYSTEM_TYPE is
		external
			"IL signature (): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"get_DeclaringType"
		end

	get_type_handle: SYSTEM_RUNTIMETYPEHANDLE is
		external
			"IL signature (): System.RuntimeTypeHandle use System.Reflection.Emit.EnumBuilder"
		alias
			"get_TypeHandle"
		end

	frozen get_underlying_field: SYSTEM_REFLECTION_EMIT_FIELDBUILDER is
		external
			"IL signature (): System.Reflection.Emit.FieldBuilder use System.Reflection.Emit.EnumBuilder"
		alias
			"get_UnderlyingField"
		end

	frozen get_type_token: SYSTEM_REFLECTION_EMIT_TYPETOKEN is
		external
			"IL signature (): System.Reflection.Emit.TypeToken use System.Reflection.Emit.EnumBuilder"
		alias
			"get_TypeToken"
		end

	get_base_type: SYSTEM_TYPE is
		external
			"IL signature (): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"get_BaseType"
		end

	get_name: STRING is
		external
			"IL signature (): System.String use System.Reflection.Emit.EnumBuilder"
		alias
			"get_Name"
		end

	get_GUID: SYSTEM_GUID is
		external
			"IL signature (): System.Guid use System.Reflection.Emit.EnumBuilder"
		alias
			"get_GUID"
		end

	get_namespace: STRING is
		external
			"IL signature (): System.String use System.Reflection.Emit.EnumBuilder"
		alias
			"get_Namespace"
		end

	get_assembly_qualified_name: STRING is
		external
			"IL signature (): System.String use System.Reflection.Emit.EnumBuilder"
		alias
			"get_AssemblyQualifiedName"
		end

	get_module: SYSTEM_REFLECTION_MODULE is
		external
			"IL signature (): System.Reflection.Module use System.Reflection.Emit.EnumBuilder"
		alias
			"get_Module"
		end

feature -- Basic Operations

	get_member_with_type_and_constraints (name2: STRING; type: INTEGER; bindingAttr: INTEGER): ARRAY [SYSTEM_REFLECTION_MEMBERINFO] is
		external
			"IL signature (System.String, enum System.Reflection.MemberTypes, enum System.Reflection.BindingFlags): System.Reflection.MemberInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetMember"
		end

	get_all_members (bindingAttr: INTEGER): ARRAY [SYSTEM_REFLECTION_MEMBERINFO] is
		external
			"IL signature (enum System.Reflection.BindingFlags): System.Reflection.MemberInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetMembers"
		end

	get_event_with_constraints (name2: STRING; bindingAttr: INTEGER): SYSTEM_REFLECTION_EVENTINFO is
		external
			"IL signature (System.String, enum System.Reflection.BindingFlags): System.Reflection.EventInfo use System.Reflection.Emit.EnumBuilder"
		alias
			"GetEvent"
		end

	get_events: ARRAY [SYSTEM_REFLECTION_EVENTINFO] is
		external
			"IL signature (): System.Reflection.EventInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetEvents"
		end

	get_all_events (bindingAttr: INTEGER): ARRAY [SYSTEM_REFLECTION_EVENTINFO] is
		external
			"IL signature (enum System.Reflection.BindingFlags): System.Reflection.EventInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetEvents"
		end

	get_element_type: SYSTEM_TYPE is
		external
			"IL signature (): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"GetElementType"
		end

	is_defined (attributeType: SYSTEM_TYPE; inherit_: BOOLEAN): BOOLEAN is
		external
			"IL signature (System.Type, System.Boolean): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"IsDefined"
		end

	invoke_member_with_culture_and_modifiers (name2: STRING; invokeAttr: INTEGER; binder: SYSTEM_REFLECTION_BINDER; target: ANY; args: ARRAY [ANY]; modifiers: ARRAY [SYSTEM_REFLECTION_PARAMETERMODIFIER]; culture: SYSTEM_GLOBALIZATION_CULTUREINFO; namedParameters: ARRAY [STRING]): ANY is
		external
			"IL signature (System.String, enum System.Reflection.BindingFlags, System.Reflection.Binder, System.Object, System.Object[], System.Reflection.ParameterModifier[], System.Globalization.CultureInfo, System.String[]): System.Object use System.Reflection.Emit.EnumBuilder"
		alias
			"InvokeMember"
		end

	frozen define_literal (literalName: STRING; literalValue: ANY): SYSTEM_REFLECTION_EMIT_FIELDBUILDER is
		external
			"IL signature (System.String, System.Object): System.Reflection.Emit.FieldBuilder use System.Reflection.Emit.EnumBuilder"
		alias
			"DefineLiteral"
		end

	get_all_constructors (bindingAttr: INTEGER): ARRAY [SYSTEM_REFLECTION_CONSTRUCTORINFO] is
		external
			"IL signature (enum System.Reflection.BindingFlags): System.Reflection.ConstructorInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetConstructors"
		end

	frozen create_type: SYSTEM_TYPE is
		external
			"IL signature (): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"CreateType"
		end

	get_interface_map (interfaceType: SYSTEM_TYPE): SYSTEM_REFLECTION_INTERFACEMAPPING is
		external
			"IL signature (System.Type): System.Reflection.InterfaceMapping use System.Reflection.Emit.EnumBuilder"
		alias
			"GetInterfaceMap"
		end

	get_interface_case_sensitive (name2: STRING; ignoreCase: BOOLEAN): SYSTEM_TYPE is
		external
			"IL signature (System.String, System.Boolean): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"GetInterface"
		end

	get_all_methods (bindingAttr: INTEGER): ARRAY [SYSTEM_REFLECTION_METHODINFO] is
		external
			"IL signature (enum System.Reflection.BindingFlags): System.Reflection.MethodInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetMethods"
		end

	get_all_nested_type (name2: STRING; bindingAttr: INTEGER): SYSTEM_TYPE is
		external
			"IL signature (System.String, enum System.Reflection.BindingFlags): System.Type use System.Reflection.Emit.EnumBuilder"
		alias
			"GetNestedType"
		end

	get_all_nested_types (bindingAttr: INTEGER): ARRAY [SYSTEM_TYPE] is
		external
			"IL signature (enum System.Reflection.BindingFlags): System.Type[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetNestedTypes"
		end

	get_field_with_constraints (name2: STRING; bindingAttr: INTEGER): SYSTEM_REFLECTION_FIELDINFO is
		external
			"IL signature (System.String, enum System.Reflection.BindingFlags): System.Reflection.FieldInfo use System.Reflection.Emit.EnumBuilder"
		alias
			"GetField"
		end

	get_all_fields (bindingAttr: INTEGER): ARRAY [SYSTEM_REFLECTION_FIELDINFO] is
		external
			"IL signature (enum System.Reflection.BindingFlags): System.Reflection.FieldInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetFields"
		end

	frozen set_custom_attribute (customBuilder: SYSTEM_REFLECTION_EMIT_CUSTOMATTRIBUTEBUILDER) is
		external
			"IL signature (System.Reflection.Emit.CustomAttributeBuilder): System.Void use System.Reflection.Emit.EnumBuilder"
		alias
			"SetCustomAttribute"
		end

	frozen set_custom_attribute_with_blob (con: SYSTEM_REFLECTION_CONSTRUCTORINFO; binaryAttribute: ARRAY [INTEGER_8]) is
		external
			"IL signature (System.Reflection.ConstructorInfo, System.Byte[]): System.Void use System.Reflection.Emit.EnumBuilder"
		alias
			"SetCustomAttribute"
		end

	get_custom_attributes (inherit_: BOOLEAN): ARRAY [ANY] is
		external
			"IL signature (System.Boolean): System.Object[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetCustomAttributes"
		end

	get_custom_attributes_for_type (attributeType: SYSTEM_TYPE; inherit_: BOOLEAN): ARRAY [ANY] is
		external
			"IL signature (System.Type, System.Boolean): System.Object[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetCustomAttributes"
		end

	get_interfaces: ARRAY [SYSTEM_TYPE] is
		external
			"IL signature (): System.Type[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetInterfaces"
		end

	get_all_properties (bindingAttr: INTEGER): ARRAY [SYSTEM_REFLECTION_PROPERTYINFO] is
		external
			"IL signature (enum System.Reflection.BindingFlags): System.Reflection.PropertyInfo[] use System.Reflection.Emit.EnumBuilder"
		alias
			"GetProperties"
		end

feature {NONE} -- Implementation

	is_value_type_impl: BOOLEAN is
		external
			"IL signature (): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"IsValueTypeImpl"
		end

	is_COM_object_impl: BOOLEAN is
		external
			"IL signature (): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"IsCOMObjectImpl"
		end

	is_primitive_impl: BOOLEAN is
		external
			"IL signature (): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"IsPrimitiveImpl"
		end

	is_pointer_impl: BOOLEAN is
		external
			"IL signature (): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"IsPointerImpl"
		end

	get_constructor_impl (bindingAttr: INTEGER; binder: SYSTEM_REFLECTION_BINDER; callConvention: INTEGER; types: ARRAY [SYSTEM_TYPE]; modifiers: ARRAY [SYSTEM_REFLECTION_PARAMETERMODIFIER]): SYSTEM_REFLECTION_CONSTRUCTORINFO is
		external
			"IL signature (enum System.Reflection.BindingFlags, System.Reflection.Binder, enum System.Reflection.CallingConventions, System.Type[], System.Reflection.ParameterModifier[]): System.Reflection.ConstructorInfo use System.Reflection.Emit.EnumBuilder"
		alias
			"GetConstructorImpl"
		end

	get_method_impl (name2: STRING; bindingAttr: INTEGER; binder: SYSTEM_REFLECTION_BINDER; callConvention: INTEGER; types: ARRAY [SYSTEM_TYPE]; modifiers: ARRAY [SYSTEM_REFLECTION_PARAMETERMODIFIER]): SYSTEM_REFLECTION_METHODINFO is
		external
			"IL signature (System.String, enum System.Reflection.BindingFlags, System.Reflection.Binder, enum System.Reflection.CallingConventions, System.Type[], System.Reflection.ParameterModifier[]): System.Reflection.MethodInfo use System.Reflection.Emit.EnumBuilder"
		alias
			"GetMethodImpl"
		end

	get_property_impl (name2: STRING; bindingAttr: INTEGER; binder: SYSTEM_REFLECTION_BINDER; returnType: SYSTEM_TYPE; types: ARRAY [SYSTEM_TYPE]; modifiers: ARRAY [SYSTEM_REFLECTION_PARAMETERMODIFIER]): SYSTEM_REFLECTION_PROPERTYINFO is
		external
			"IL signature (System.String, enum System.Reflection.BindingFlags, System.Reflection.Binder, System.Type, System.Type[], System.Reflection.ParameterModifier[]): System.Reflection.PropertyInfo use System.Reflection.Emit.EnumBuilder"
		alias
			"GetPropertyImpl"
		end

	get_attribute_flags_impl: INTEGER is
		external
			"IL signature (): enum System.Reflection.TypeAttributes use System.Reflection.Emit.EnumBuilder"
		alias
			"GetAttributeFlagsImpl"
		end

	is_by_ref_impl: BOOLEAN is
		external
			"IL signature (): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"IsByRefImpl"
		end

	is_array_impl: BOOLEAN is
		external
			"IL signature (): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"IsArrayImpl"
		end

	has_element_type_impl: BOOLEAN is
		external
			"IL signature (): System.Boolean use System.Reflection.Emit.EnumBuilder"
		alias
			"HasElementTypeImpl"
		end

end -- class SYSTEM_REFLECTION_EMIT_ENUMBUILDER
