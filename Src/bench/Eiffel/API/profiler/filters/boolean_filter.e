deferred class BOOLEAN_FILTER

inherit
	FILTER

feature -- Creation

	make is
		do
			!! filters.make
		end

feature -- Adding FILTERs

	extend (new_filter: FILTER) is
			-- Extend filters to be checked with `new_filter'.
		do
			filters.extend (new_filter)
		end

feature -- Checking

	filtering_is_allowed: BOOLEAN is
			-- May `filter' be called?
		do
			Result := filters.count >= 2
		end

feature {NONE} -- Attributes

	filters: LINKED_LIST [FILTER]
		-- Filters to checked by this filter

feature {NONE} -- Hidden features

	set_operator (new_operator: STRING) is
		do
		end

	set_value (new_value: COMPARABLE) is
		do
		end

	set_value_range (lower, upper: COMPARABLE) is
		do
		end

end -- class BOOLEAN_FILTER
