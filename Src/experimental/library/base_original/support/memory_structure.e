note
	description: "Representation of a memory structure."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	MEMORY_STRUCTURE

feature -- Initialization

	make
			-- Initialize current with given `structure_size'.
		local
			null: POINTER
		do
			internal_item := null
			create managed_pointer.make (structure_size)
			shared := False
		ensure
			not_shared: not shared
		end

	make_by_pointer (a_ptr: POINTER)
			-- Initialize current with `a_ptr'.
		require
			a_ptr_not_null: a_ptr /= default_pointer
		do
			internal_item := a_ptr
			managed_pointer := Void
			shared := True
		ensure
			shared: shared
		end
	
feature -- Access

	shared: BOOLEAN
			-- Is current memory area shared with others?

	item: POINTER
			-- Access to memory area.
		do
			if shared then
				Result := internal_item
			else
				Result := managed_pointer.item
			end
		end

feature -- Measurement

	structure_size: INTEGER
			-- Size to allocate (in bytes)
		deferred
		ensure
			positive_result: Result > 0
		end
		
feature {NONE} -- Implementation

	internal_item: POINTER
			-- Pointer holding value when shared.

	managed_pointer: MANAGED_POINTER
			-- Hold memory area in a managed way.

invariant
	managed_pointer_valid: not shared implies managed_pointer /= Void
	internal_item_valid: shared implies internal_item /= default_pointer

note
	library:	"EiffelBase: Library of reusable components for Eiffel."
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"






end -- class MEMORY_STRUCTURE
