-- This file has been generated by EWG. Do not edit. Changes will be lost!

class MEASURE_WINDOW_TITLE_REC_STRUCT

inherit

	EWG_STRUCT

	MEASURE_WINDOW_TITLE_REC_STRUCT_EXTERNAL
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

	fulltitlewidth: INTEGER is
			-- Access member `fullTitleWidth'
		require
			exists: exists
		do
			Result := get_fulltitlewidth_external (item)
		ensure
			result_correct: Result = get_fulltitlewidth_external (item)
		end

	set_fulltitlewidth (a_value: INTEGER) is
			-- Set member `fullTitleWidth'
		require
			exists: exists
		do
			set_fulltitlewidth_external (item, a_value)
		ensure
			a_value_set: a_value = fulltitlewidth
		end

	titletextwidth: INTEGER is
			-- Access member `titleTextWidth'
		require
			exists: exists
		do
			Result := get_titletextwidth_external (item)
		ensure
			result_correct: Result = get_titletextwidth_external (item)
		end

	set_titletextwidth (a_value: INTEGER) is
			-- Set member `titleTextWidth'
		require
			exists: exists
		do
			set_titletextwidth_external (item, a_value)
		ensure
			a_value_set: a_value = titletextwidth
		end

	isunicodetitle: INTEGER is
			-- Access member `isUnicodeTitle'
		require
			exists: exists
		do
			Result := get_isunicodetitle_external (item)
		ensure
			result_correct: Result = get_isunicodetitle_external (item)
		end

	set_isunicodetitle (a_value: INTEGER) is
			-- Set member `isUnicodeTitle'
		require
			exists: exists
		do
			set_isunicodetitle_external (item, a_value)
		ensure
			a_value_set: a_value = isunicodetitle
		end

	unused: INTEGER is
			-- Access member `unused'
		require
			exists: exists
		do
			Result := get_unused_external (item)
		ensure
			result_correct: Result = get_unused_external (item)
		end

	set_unused (a_value: INTEGER) is
			-- Set member `unused'
		require
			exists: exists
		do
			set_unused_external (item, a_value)
		ensure
			a_value_set: a_value = unused
		end

end
