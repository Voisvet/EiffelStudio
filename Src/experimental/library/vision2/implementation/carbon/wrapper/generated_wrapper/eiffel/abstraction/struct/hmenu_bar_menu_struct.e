-- This file has been generated by EWG. Do not edit. Changes will be lost!

class HMENU_BAR_MENU_STRUCT

inherit

	EWG_STRUCT

	HMENU_BAR_MENU_STRUCT_EXTERNAL
		export
			{NONE} all
		end

create

	make_new_unshared,
	make_new_shared,
	make_unshared,
	make_shared

feature {ANY} -- Access

	sizeof: INTEGER is
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	menu_struct: OPAQUE_MENU_REF_STRUCT is
			-- Access member `menu'
		require
			exists: exists
		do
			create Result.make_shared (get_menu_external (item))
		ensure
			result_not_void: Result /= Void
			result_has_correct_item: Result.item = menu
		end

	set_menu_struct (a_value: OPAQUE_MENU_REF_STRUCT) is
			-- Set member `menu'
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_menu_external (item, a_value.item)
		ensure
			a_value_set: a_value.item = menu
		end

	menu: POINTER is
			-- Access member `menu'
		require
			exists: exists
		do
			Result := get_menu_external (item)
		ensure
			result_correct: Result = get_menu_external (item)
		end

	set_menu (a_value: POINTER) is
			-- Set member `menu'
		require
			exists: exists
		do
			set_menu_external (item, a_value)
		ensure
			a_value_set: a_value = menu
		end

	reserved: INTEGER is
			-- Access member `reserved'
		require
			exists: exists
		do
			Result := get_reserved_external (item)
		ensure
			result_correct: Result = get_reserved_external (item)
		end

	set_reserved (a_value: INTEGER) is
			-- Set member `reserved'
		require
			exists: exists
		do
			set_reserved_external (item, a_value)
		ensure
			a_value_set: a_value = reserved
		end

end
