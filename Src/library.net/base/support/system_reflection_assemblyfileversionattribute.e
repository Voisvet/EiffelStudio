indexing
	Generator: "Eiffel Emitter 2.5b2"
	external_name: "System.Reflection.AssemblyFileVersionAttribute"

frozen external class
	SYSTEM_REFLECTION_ASSEMBLYFILEVERSIONATTRIBUTE

inherit
	SYSTEM_ATTRIBUTE

create
	make_assembly_file_version_attribute

feature {NONE} -- Initialization

	frozen make_assembly_file_version_attribute (version2: STRING) is
		external
			"IL creator signature (System.String) use System.Reflection.AssemblyFileVersionAttribute"
		end

feature -- Access

	frozen get_version: STRING is
		external
			"IL signature (): System.String use System.Reflection.AssemblyFileVersionAttribute"
		alias
			"get_Version"
		end

end -- class SYSTEM_REFLECTION_ASSEMBLYFILEVERSIONATTRIBUTE
