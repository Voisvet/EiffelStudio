note

	description: "General list implementation"
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

deferred class LIST_MAN_I

feature

	add_browse_action (a_command: COMMAND; argument: ANY)
			-- Add `a_command' to the list of action to execute when items are
			-- selected with browse selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	add_click_action (a_command: COMMAND; argument: ANY)
			-- Add `a_command' to the list of action to execute when items are
			-- selected with click selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	add_extended_action (a_command: COMMAND; argument: ANY)
			-- Add `a_command' to the list of action to execute when items are
			-- selected with extended selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	put_left (an_item: STRING)
			-- Add `an_item' to the left of cursor position.
			-- Do not move cursor.
		require
			not_before_unless_empty: before implies is_empty
		deferred
		end;

	add_multiple_action (a_command: COMMAND; argument: ANY)
			-- Add `a_command' to the list of action to execute when items are
			-- selected with multiple selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	put_right (an_item: STRING)
			-- Add `an_item' to the right of cursor position.
			-- Do not move cursor.
		require
			not_after_unless_empty: after implies is_empty
		deferred
		ensure
			new_count: count = old count+1;
			same_index: index = old index
		end;

	add_single_action (a_command: COMMAND; argument: ANY)
			-- Add `a_command' to the list of action to execute when items are
			-- selected with single selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	back
			-- Move cursor backward one index.
		require
			not_before: not before
		deferred
		ensure
			moved_back: index = old index - 1
		end;

	count: INTEGER
			-- Number of items in the chain
		deferred
		ensure
		end;

	deselect_all
			-- Deselect all selected items.
		deferred
		ensure
			selected_list_is_empty: selected_count = 0
		end;

	duplicate (n: INTEGER): LINKED_LIST [STRING]
			-- Copy of the sub-list beginning at cursor index
			-- and comprising min (`n', count-index+1) items
		require
			not_off: off implies after
			valid_sublist: n >= 0
		deferred
		end;

	is_empty: BOOLEAN
			-- Is the chain empty?
		deferred
		end;

	finish
			-- Move cursor to last index
			-- (no effect if chain is empty).
		deferred
		ensure
			at_last: not is_empty implies islast
		end;

	first: STRING
			-- Item at first index
		require
			not_empty: not is_empty
		deferred
		end;

	first_visible_item_position: INTEGER
			-- Position of the first visible item in the list
		deferred
		ensure
			non_negative: Result >= 0
			in_list: Result <= count;
			empty_convention: is_empty implies (Result = 0)
		end;

	forth
			-- Move cursor forward one position.
		require
			not_after: not after
		deferred
		ensure
			moved_forth: index = old index + 1
		end;

	go_i_th (i: INTEGER)
			-- Move cursor to `i'-th position.
		require
			index_large_enough: i >= 0;
			index_small_enough: i <= count + 1;
			not_empty_unless_zero: is_empty implies i=0;
		deferred
		ensure
			position_expected: index = i
		end;

	has (v: STRING): BOOLEAN
			-- Does `v' appear in the chain ?
		deferred
		ensure
			not_found_in_empty: Result implies not is_empty
		end;

	i_th (i: INTEGER): STRING
			-- Item at `i'_th position
		require
			index_large_enough: i >= 1;
			index_small_enough: i <= count;
		deferred
		end;

	index_of (v: STRING; i: INTEGER): INTEGER
			-- Index of `i'-th occurrence of item identical to `v'
			-- 0 if none
		require
			positive_occurrence: i > 0
		deferred
		ensure
			non_negative_result: Result >= 0
		end;

	isfirst: BOOLEAN
			-- Is cursor at first index in the chain?
		deferred
		ensure
			valid_position: Result implies (not is_empty)
		end;

	islast: BOOLEAN
			-- Is cursor at last index in the chain?
		deferred
		ensure
			valid_position: Result implies (not is_empty)
		end;

	item: STRING
			-- Item at cursor index
		require
			not_off: not off
		deferred
		end;

	last: STRING
			-- Item at last index
		require
			not_empty: not is_empty
		deferred
		end;

	merge_left (other: LIST [STRING])
			-- Merge `other' into the current list before
			-- cursor position.
			-- Do not move cursor.
			-- Empty other.
		require
			empty_or_not_before: is_empty or not before;
			other_exists: other /= Void
		deferred
		ensure
			count = old count + old other.count;
			other.is_empty
		end;

	merge_right (other: LIST [STRING])
			-- Merge `other' into the current list after
			-- cursor position.
			-- Do not move cursor.
			-- Empties other.
		require
			not_after_unless_empty: is_empty or not after;
			other_exists: other /= Void
		deferred
		ensure
			count = old count+old other.count;
			other.is_empty
		end;

	move (i: INTEGER)
			-- Move cursor `i' positions.
		require
			stay_right: index + i >= 0;
			stay_left: index + i <= count + 1;
			not_empty_unless_zero: is_empty implies i=0;
		deferred
		ensure
			expected_index: index = old index + i
		end;

	off: BOOLEAN
			-- Is cursor off?
		deferred
		end;

	before: BOOLEAN
			-- Is cursor off left edge?
		deferred
		end;

	after: BOOLEAN
			-- Is cursor off right edge?
		deferred
		end;

	index: INTEGER
			-- Current cursor index, 0 if empty
		deferred
		end;

	put (an_item: STRING)
			-- Put `an_item' at cursor position.
		require
			not_off: not off;
		deferred
		ensure
			same_count: count = old count
		end;

	put_i_th (an_item: STRING; i: INTEGER)
			-- Put `an_item' at `i'-th position.
		require
			index_large_enough: i >= 1;
			index_small_enough: i <= count
		deferred
		ensure
			insertion_done: i_th (i) = an_item
		end;

	remove
			-- Remove item at cursor position
			-- and move cursor to its right neighbor
			-- (or `after' if no right neighbor).
		require
			not_empty: not is_empty
		deferred
		ensure
			count_changed: count = old count-1;
			after_when_empty: is_empty implies after
		end;

	prune_all (an_item: STRING)
			-- Remove all items `an_item'.
			-- Put cursor after.
		deferred
		ensure
			no_more_occurrences: not has (an_item)
			is_after: after
		end;

	remove_browse_action (a_command: COMMAND; argument: ANY)
			-- Remove `a_command' to the list of action to execute when items are
			-- selected with browse selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	remove_click_action (a_command: COMMAND; argument: ANY)
			-- Remove `a_command' to the list of action to execute when items are
			-- selected with click selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	remove_extended_action (a_command: COMMAND; argument: ANY)
			-- Remove `a_command' to the list of action to execute when items are
			-- selected with extended selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	remove_left (n: INTEGER)
			-- Remove min (`n', index - 1) items
			-- to the left of cursor position.
			-- Do not move cursor
			-- (but its position will be decreased by up to n).
		require
			not_before: not before;
			non_negative_argument: n >= 0
		deferred
		end;

	remove_multiple_action (a_command: COMMAND; argument: ANY)
			-- Remove `a_command' to the list of action to execute when items are
			-- selected with multiple selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	remove_right (n: INTEGER)
			-- Remove min (`n', count - position) items
			-- to the right of cursor position.
			-- Do not move cursor.
		require
			not_after: not after;
			non_negative_argument: n >= 0
		deferred
		ensure
			unmoved: index = old index
		end;

	remove_single_action (a_command: COMMAND; argument: ANY)
			-- Remove `a_command' to the list of action to execute when items are
			-- selected with single selection mode in current scroll list.
		require
			not_a_command_void: a_command /= Void
		deferred
		end;

	scroll_to_current
			-- Make `item' the first visible item in the list if
			-- `index' < `first_visible_item_index'.
			-- Make `item' the last visible item in the list if
			-- `index' >= `first_visible_item_position'+`visible_item_count'.
			-- Do nothing if `item' is visible.
		require
			not_off: not off
		deferred
		end;

	search_equal (v: STRING)
			-- Move cursor to first position
			-- (at or after current cursor position)
			-- where item is equal to `v' (shallow equality);
			-- go off right if none.
		require
			search_element_exists: v /= Void
		deferred
		ensure
			(not off) implies (v.is_equal (item))
		end;

	select_item
			-- Select item at current position.
		require
			not_off: not off
		deferred
		end;

	select_i_th (i: INTEGER)
			-- Select item at `i'-th position.
		require
			index_large_enough: i >= 1;
			index_small_enough: i <= count
		deferred
		end;

	selected_count: INTEGER
			-- Number of selected items in current list
		deferred
		end;

	selected_item: STRING
			-- Selected item if single or browse selection mode is selected
			-- Void if nothing is selected
		deferred
		end;

	selected_items: LINKED_LIST [STRING]
			-- Selected items
		deferred
		end;

	selected_position: INTEGER
			-- Position of selected item if single or browse selection mode is
			-- selected
			-- Null if nothing is selected
		deferred
		end;

	selected_positions: LINKED_LIST [INTEGER]
			-- Positions of the selected items
		deferred
		end;

	set_browse_selection
			-- Set selection mode of current list to
			-- browse. At most only one item can be selected
			-- at a time but dragging select button moves
			-- the selection along with the cursor.
		deferred
		end;

	set_extended_selection
			-- Set selection mode of current list to
			-- extended. Any number of items can be selected
			-- at any time using dragging mode, otherwise
			-- pressing an item selects it but deselect any
			-- other selected items.
		deferred
		end;

	set_multiple_selection
			-- Set selection mode of current list to
			-- multiple. Any item can be selected at any
			-- time in this mode.
		deferred
		end;

	set_single_selection
			-- Set selection mode of current list to
			-- single. At most only one item can be selected
			-- at a time.
		deferred
		end;

	set_visible_item_count (a_count: INTEGER)
			-- Set the number of visible items to `a_count'.
		require
			a_count_large_enough: a_count > 0
		deferred
		end;

	show_current
			-- Make item at current position visible.
		require
			not_off: not off
		deferred
		end;

	show_first
			-- Make first item visible.
		deferred
		end;

	show_i_th (i: INTEGER)
			-- Make item at `i'-th position visible.
		require
			index_large_enough: i >= 1;
			index_small_enough: i <= count
		deferred
		end;

	show_last
			-- Make last item visible.
		deferred
		end;

	start
			-- Move cursor to first position.
		deferred
		ensure
			is_empty or isfirst
		end;

	swap (i: INTEGER)
			-- Exchange item at `i'-th position with item
			-- at cursor position.
		require
			cursor_not_off: not off;
			index_large_enough: i >= 1;
			index_small_enough: i <= count
		deferred
		end;

	visible_item_count: INTEGER
			-- Number of visible item of list
		deferred
		ensure
		end;

	wipe_out
			-- Make list empty
		deferred
		end

	is_destroyed: BOOLEAN
			-- Is Current is_destroyed?
		deferred
		end


invariant

	non_negative_selected_item_count: not is_destroyed implies selected_count >= 0
	positive_visible_item_count:  not is_destroyed implies visible_item_count > 0
	non_negative_index: index >= 0
	index_small_enough:  not is_destroyed implies index <= count + 1
	non_negative_count:  not is_destroyed implies count >= 0
	empty_definition:  not is_destroyed implies is_empty = (count = 0)
note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end

