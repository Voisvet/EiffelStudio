indexing
	description: "COM interface for metadata consumer"
	date: "$Date$"
	revision: "$Revision$"
	metadata:
		create {COM_VISIBLE_ATTRIBUTE}.make (True) end
	class_metadata:
		create {CLASS_INTERFACE_ATTRIBUTE}.make (feature {CLASS_INTERFACE_TYPE}.none) end,
		create {GUID_ATTRIBUTE}.make ("E1FFE1DE-1816-4209-AF21-FC599DAE7CAA") end
	interface_metadata:
		create {GUID_ATTRIBUTE}.make ("E1FFE1FC-11B7-4757-88F7-9DAD46A40C44") end

class
	COM_CACHE_MANAGER

feature -- Access

	is_successful: BOOLEAN
			-- Was the consuming successful?
		
	is_initialized: BOOLEAN 
			-- has COM object been initialized?
			
	last_error_message: SYSTEM_STRING
			-- Last error message

feature -- Basic Exportations

	initialize (a_clr_version: SYSTEM_STRING) is
			-- initialize the object using default path to EAC
		require
			not_already_initialized: not is_initialized
			not_void_clr_version: a_clr_version /= Void
			valid_clr_version: a_clr_version.length > 0
		do
			clr_version := a_clr_version
			is_initialized := True
		ensure
			clr_version_set: clr_version = a_clr_version
			current_initialized: is_initialized
		end
		
	initialize_with_path (a_path, a_clr_version: SYSTEM_STRING) is
			-- initialize object with path to specific EAC and initializes it if not already done.
		require
			not_already_initialized: not is_initialized
			non_void_path: a_path /= Void
			valid_path: a_path.length > 0
			not_void_clr_version: a_clr_version /= Void
			valid_clr_version: a_clr_version.length > 0
		local
			cr: CACHE_READER
		do
			clr_version := a_clr_version
			eac_path := a_path
			create cr.make (a_clr_version)
			cr.set_internal_eiffel_cache_path (eac_path)
			if not cr.is_initialized then
				(create {EIFFEL_XML_SERIALIZER}).serialize (
				create {CACHE_INFO}.make (a_clr_version),
				cr.absolute_info_path)
			end
			is_initialized := True
		ensure
			clr_version_set: clr_version = a_clr_version
			eac_path_set: eac_path = a_path
			current_initialized: is_initialized
		end
		
	unload is
			-- unloads initialized app domain and cache releated objects to preserve resources
		local
			l_impl: MARSHAL_CACHE_MANAGER
		do
			l_impl ?= new_marshalled_cache_manager.unwrap
			l_impl.prepare_for_unload
			if app_domain /= Void then
				internal_marshalled_cache_manager := Void
				if not app_domain.is_finalizing_for_unload then
					feature {APP_DOMAIN}.unload (app_domain)
				end
				app_domain := Void
			end
		end

	consume_assembly (a_name, a_version, a_culture, a_key: SYSTEM_STRING) is
			-- consume an assembly using it's display name parts.
			-- "`a_name', Version=`a_version', Culture=`a_culture', PublicKeyToken=`a_key'"
		require
			current_initialized: is_initialized
			non_void_name: a_name /= Void
			valid_name: a_name.length > 0
		local
			l_impl: MARSHAL_CACHE_MANAGER
		do				
			l_impl ?= new_marshalled_cache_manager.unwrap
			l_impl.consume_assembly (a_name, a_version, a_culture, a_key)

			update_current (l_impl)
		end
		
	consume_assembly_from_path (a_path: SYSTEM_STRING) is
			-- Consume assembly located `a_path'
		require
			current_initialized: is_initialized
			non_void_path: a_path /= Void
			valid_path: a_path.length > 0
		local
			i, nb: INTEGER
			l_impl: MARSHAL_CACHE_MANAGER
			l_native_array: NATIVE_ARRAY [SYSTEM_STRING]
			l_path: SYSTEM_STRING
		do	
			l_native_array := a_path.split ((<<';'>>).to_cil)
			from
				l_path := feature {PATH}.get_directory_name (l_native_array.item (0))
				i := 1
				nb := l_native_array.count - 1
			until
				i > nb
			loop
				l_path := feature {SYSTEM_STRING}.concat_string_string (
					l_path, ";")
				l_path := feature {SYSTEM_STRING}.concat_string_string (
					l_path, feature {PATH}.get_directory_name (l_native_array.item (i)))
				i := i + 1
			end
		
			l_impl ?= new_marshalled_cache_manager.unwrap
			
				-- consume assemblies
			from
				i := 0
				nb := l_native_array.count - 1
			until
				i > nb
			loop
				l_impl.consume_assembly_from_path (l_native_array.item (i))
				i := i + 1
			end
			
			--l_resolver.dispose
			update_current (l_impl)
		end
		
	relative_folder_name (a_name, a_version, a_culture, a_key: SYSTEM_STRING): SYSTEM_STRING is
			-- returns the relative path to an assembly using at least `a_name'
		require
			current_initialized: is_initialized
			non_void_name: a_name /= Void
			valid_name: a_name.length > 0
		local
			l_impl: MARSHAL_CACHE_MANAGER
		do			
			l_impl ?= new_marshalled_cache_manager.unwrap
			Result := l_impl.relative_folder_name (a_name, a_version, a_culture, a_key)

			update_current (l_impl)
		ensure
			non_void_result: Result /= Void
			non_empty_result: Result.length > 0
		end
		
	relative_folder_name_from_path (a_path: SYSTEM_STRING): SYSTEM_STRING is
			-- Relative path to consumed assembly metadata given `a_path'
		require
			current_initialized: is_initialized
			non_void_path: a_path /= Void
			valid_path: a_path.length > 0
			path_exists: (create {FILE_INFO}.make (a_path)).exists
		local
			l_impl: MARSHAL_CACHE_MANAGER
		do			
			l_impl ?= new_marshalled_cache_manager.unwrap
			Result := l_impl.relative_folder_name_from_path (a_path)

			update_current (l_impl)
		ensure
			non_void_result: Result /= Void
			non_empty_result: Result.length > 0
		end

	assembly_info_from_assembly (a_path: SYSTEM_STRING): COM_ASSEMBLY_INFORMATION is
			-- retrieve a local assembly's information
		require
			current_initialized: is_initialized
			non_void_path: a_path /= Void
			valid_path: a_path.length > 0
		local
			l_impl: MARSHAL_CACHE_MANAGER
		do		
			l_impl ?= new_marshalled_cache_manager.unwrap
			Result := l_impl.assembly_info_from_assembly (a_path)

			update_current (l_impl)
		ensure
			non_void_result: Result /= Void
		end

feature {NONE} -- Implementation

	update_current (a_impl: MARSHAL_CACHE_MANAGER) is
			-- Update Current with `a_impl'.
		indexing
			metadata: create {COM_VISIBLE_ATTRIBUTE}.make (False) end
		require
			a_impl_not_void: a_impl /= Void
		do
			is_successful := a_impl.is_successful
			last_error_message := a_impl.last_error_message
		end	
	
	new_marshalled_cache_manager: OBJECT_HANDLE is
			-- New instance of `MARSHAL_CACHE_MANAGER' created in `a_app_domain'.
		indexing
			metadata: create {COM_VISIBLE_ATTRIBUTE}.make (False) end
		local
			l_inst_obj_handle: OBJECT_HANDLE
			l_lifetime_lease: ILEASE
			l_time_span: TIME_SPAN
			l_marshal: MARSHAL_CACHE_MANAGER
		do
			if internal_marshalled_cache_manager = Void then
				check
					app_domain_not_exists: app_domain = Void
				end
				app_domain := feature {APP_DOMAIN}.create_domain ("EiffelSoftware.MetadataConsumer" + feature {GUID}.new_guid.to_string, Void, Void)
				l_inst_obj_handle ?= app_domain.create_instance_from (
					to_dotnet.get_type.assembly.location,
					"EiffelSoftware.MetadataConsumer.MARSHAL_CACHE_MANAGER")
				check
					created_new_cache_manager: l_inst_obj_handle /= Void
				end
				l_lifetime_lease ?= l_inst_obj_handle.initialize_lifetime_service
				check
					l_lifetime_lease_not_void: l_lifetime_lease /= Void
				end
				l_time_span := l_lifetime_lease.renew (feature {TIME_SPAN}.from_days (356))
				
				Result := l_inst_obj_handle
				l_marshal ?= Result.unwrap
				check
					unwrapped: l_marshal /= Void
				end
	
				if eac_path = Void then
					l_marshal.initialize (clr_version)
				else
					l_marshal.initialize_with_path (eac_path, clr_version)
				end
				if l_marshal.is_initialized then
					internal_marshalled_cache_manager := Result
				end
			else
				Result := internal_marshalled_cache_manager
			end
		ensure
			new_cache_manager_not_void: Result /= Void
		end

	clr_version: SYSTEM_STRING
			-- Version of CLR used to emit data
		indexing
			metadata: create {COM_VISIBLE_ATTRIBUTE}.make (False) end
		end
		
	eac_path: SYSTEM_STRING
			-- Location of EAC `Eiffel Assembly Cache'
		indexing
			metadata: create {COM_VISIBLE_ATTRIBUTE}.make (False) end
		end

	internal_marshalled_cache_manager: OBJECT_HANDLE
			-- internal marshalled cache manager
		indexing
			metadata: create {COM_VISIBLE_ATTRIBUTE}.make (False) end
		end

	app_domain: APP_DOMAIN
			-- app domain consumption is run in
		indexing
			metadata: create {COM_VISIBLE_ATTRIBUTE}.make (False) end
		end
		
end -- class MARSHAL_CACHE_MANAGER
