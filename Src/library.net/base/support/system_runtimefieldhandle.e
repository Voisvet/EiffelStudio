indexing
	Generator: "Eiffel Emitter 2.5b2"
	external_name: "System.RuntimeFieldHandle"

frozen expanded external class
	SYSTEM_RUNTIMEFIELDHANDLE

inherit
	SYSTEM_VALUETYPE
	SYSTEM_RUNTIME_SERIALIZATION_ISERIALIZABLE

feature -- Access

	frozen get_value: POINTER is
		external
			"IL signature (): System.IntPtr use System.RuntimeFieldHandle"
		alias
			"get_Value"
		end

feature -- Basic Operations

	frozen get_object_data (info: SYSTEM_RUNTIME_SERIALIZATION_SERIALIZATIONINFO; context: SYSTEM_RUNTIME_SERIALIZATION_STREAMINGCONTEXT) is
		external
			"IL signature (System.Runtime.Serialization.SerializationInfo, System.Runtime.Serialization.StreamingContext): System.Void use System.RuntimeFieldHandle"
		alias
			"GetObjectData"
		end

end -- class SYSTEM_RUNTIMEFIELDHANDLE
