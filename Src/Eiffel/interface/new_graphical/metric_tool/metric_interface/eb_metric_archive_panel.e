indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	EB_METRIC_ARCHIVE_PANEL

inherit
	EB_METRIC_ARCHIVE_PANEL_IMP

	EB_METRIC_PANEL
		undefine
			copy,
			is_equal,
			default_create
		end

	EB_CONSTANTS
		undefine
			copy,
			is_equal,
			default_create
		end

	EB_SHARED_PREFERENCES
		undefine
			copy,
			is_equal,
			default_create
		end

	EB_METRIC_INTERFACE_PROVIDER
		undefine
			copy,
			is_equal,
			default_create
		end

	EXCEPTIONS
		undefine
			copy,
			is_equal,
			default_create
		end

	TRANSFER_MANAGER_BUILDER
		undefine
			copy,
			is_equal,
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make (a_tool: like metric_tool) is
			-- Initialize `metric_tool' with `a_tool'.
		require
			a_tool_attached: a_tool /= Void
		do
			metric_tool := a_tool
			default_create

				-- Setup `open_file_dialog'.
			create open_file_dialog.make_with_preference (preferences.dialog_data.last_opened_metric_browse_archive_directory_preference)
			open_file_dialog.set_title (metric_names.t_select_archive)
			open_file_dialog.filters.extend (["*.xml", "XML files"])

				-- Setup timers.
			create internal_timer.make_with_interval (0)
			create current_archive_timer.make_with_interval (0)
			create reference_archive_timer.make_with_interval (0)
		end

	user_initialization is
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		do
				-- Setup domain selector.
			create domain_selector.make (False)
			domain_selector.set_minimum_width (100)
				-- Setup metric selector.
			create metric_selector.make (True)
			metric_selector.set_minimum_width (160)
			metric_selector.double_click_actions.extend (agent on_pointer_double_click_on_metric_item)

				-- Setup toolbar.
			run_btn.set_pixmap (pixmaps.icon_pixmaps.debug_run_icon)
			run_btn.select_actions.extend (agent on_run_archive)
			stop_btn.set_pixmap (pixmaps.icon_pixmaps.debug_stop_icon)

			domain_selection_area.extend (domain_selector)
			metric_selection_area.extend (metric_selector)

			new_archive_browse_btn.select_actions.extend (agent on_open_new_archive (agent on_new_archive_file_name_selected))
			new_archive_file_name_text.change_actions.extend (agent on_new_archive_file_name_changes)

			stop_btn.disable_sensitive
			stop_btn.select_actions.extend (agent on_stop_metric_evaluation_button_pressed)
			clean_btn.disable_select
			clean_btn.disable_sensitive

			compare_btn.set_pixmap (pixmaps.icon_pixmaps.debug_run_icon)
			browse_reference_archive_btn.select_actions.extend (agent on_open_new_archive (agent on_comparison_archive_selected (reference_metric_archive_text)))
			browse_current_archive_btn.select_actions.extend (agent on_open_new_archive (agent on_comparison_archive_selected (current_metric_archive_text)))
			compare_btn.select_actions.extend (agent on_compare_archives)
			run_btn.set_tooltip (metric_names.f_start_archive)
			stop_btn.set_tooltip (metric_names.f_stop_archive)
			new_archive_browse_btn.set_tooltip (metric_names.f_select_exist_archive_file)
			clean_btn.set_tooltip (metric_names.f_clean_archive)
			compare_btn.set_tooltip (metric_names.f_compare_archive)
			compare_btn.set_text (metric_names.t_compare)
			browse_current_archive_btn.set_tooltip (metric_names.f_select_current_archive)
			browse_reference_archive_btn.set_tooltip (metric_names.f_select_reference_archive)
			run_btn.disable_sensitive
			domain_selector.domain_change_actions.extend (agent (a_domain: EB_METRIC_DOMAIN) do synchronize_archive_evaluation_area end)
			new_archive_file_lbl.set_text (metric_names.t_location)
			clean_btn.set_text (metric_names.t_clean)
			archive_definition_frame.set_text (metric_names.t_archive_management)
			archive_comparison_area.set_text (metric_names.t_archive_comparison)
			source_domain_lbl.set_text (metric_names.t_select_source_domain)
			metric_lbl.set_text (metric_names.t_select_metric)
			reference_archive_lbl.set_text (metric_names.t_select_reference_archive)
			current_archive_lbl.set_text (metric_names.t_select_current_archive)
		end

feature -- Access

	domain_selector: EB_METRIC_DOMAIN_SELECTOR
			-- Domain selector

	metric_selector: EB_METRIC_SELECTOR
			-- Metric selector

	last_reference_archive: LIST [EB_METRIC_ARCHIVE_NODE]
			-- Last reference archive

	last_current_archive: LIST [EB_METRIC_ARCHIVE_NODE]
			-- Last current archive

feature -- Status report

	is_cancel_evaluation_requested: BOOLEAN
			-- Is cancel metric evaluation requested?

	is_current_metric_archive_ok: BOOLEAN
			-- Is file specified in `current_metric_archive_text' valid?

	is_reference_metric_archive_ok: BOOLEAN
			-- Is file specified in `reference_metric_archive_text' valid?

	is_archive_running: BOOLEAN
			-- Is metric archive evaluation running?

	is_compiling: BOOLEAN is
			-- Is Eiffel compilation under-going?
		do
			Result := metric_tool.is_compiling
		end

	is_new_archive_file_selected: BOOLEAN
			-- Is new archive file selected?

	is_new_archive_file_exists: BOOLEAN
			-- Does selected new archive file exist?

	is_last_load_successful: BOOLEAN
			-- Is last `load_archive' successful?

feature -- Basic operations

	synchronize_when_compile_start is
			-- Synchronize when Eiffel compilation starts.
		do
			archive_definition_frame.disable_sensitive
			archive_comparison_area.disable_sensitive
		end

	synchronize_when_compile_stop is
			-- Synchronize when Eiffel compilation stops.
		do
			archive_definition_frame.enable_sensitive
			archive_comparison_area.enable_sensitive
		end

feature -- Actions

	on_select is
			-- Action to be performed when current panel is selected
		do
		end

	on_open_new_archive (a_selection_agent: PROCEDURE [ANY, TUPLE]) is
			-- Action to be performed to open a dialog to select a file name when create/update a metric archive
			-- When user press "OK" in `open_file_dialog', `a_selection_agent' will be invoked.
		require
			a_selection_agent_attached: a_selection_agent /= Void
		do
			open_file_dialog.open_actions.wipe_out
			open_file_dialog.open_actions.extend (a_selection_agent)
			open_file_dialog.show_modal_to_window (metric_tool.development_window.window)
		end

	on_new_archive_file_name_selected is
			-- Action to be performed when user selected a file name for metric archive create/update
		do
			new_archive_file_name_text.set_text (open_file_dialog.file_name)
		end

	on_new_archive_file_name_changes is
			-- Action to be performed when text in `new_archive_file_name_text' changes
		do
			internal_timer.actions.wipe_out
			internal_timer.actions.extend_kamikaze (agent check_archive_validity (new_archive_file_name_text, agent on_new_archive_checked, internal_timer))
			internal_timer.set_interval (500)
		end

	on_new_archive_checked (a_file_exist: BOOLEAN; a_valid: BOOLEAN; a_archive: LIST [EB_METRIC_ARCHIVE_NODE]) is
			-- Action to be performed when archive file specified in `new_archive_file_name_text' is checked
			-- If `a_valid' is True, `a_archive' is the archive, otherwise, `a_archive' is Void.
		do
			is_new_archive_file_exists := False
			if a_file_exist then
				if a_valid then
					clean_btn.enable_sensitive
					clean_btn.disable_select
					new_archive_file_name_text.set_foreground_color (default_foreground_color)
					new_archive_file_name_text.set_tooltip (tooltip_from_archive (a_archive))
					is_new_archive_file_exists := True
				else
					clean_btn.disable_sensitive
					clean_btn.enable_select
					new_archive_file_name_text.set_foreground_color (red_color)
					new_archive_file_name_text.set_tooltip (metric_names.t_selected_archive_not_valid)
				end
				is_new_archive_file_selected := True
			else
				clean_btn.disable_select
				clean_btn.disable_sensitive
				new_archive_file_name_text.set_foreground_color (default_foreground_color)
				new_archive_file_name_text.remove_tooltip
				is_new_archive_file_selected := not new_archive_file_name_text.text.is_empty
			end
			synchronize_archive_evaluation_area
		end

	synchronize_archive_evaluation_area is
			-- Synchronize archive evaluation area.
		do
			if is_new_archive_file_selected and then domain_selector.domain.is_valid then
				run_btn.enable_sensitive
			else
				run_btn.disable_sensitive
			end
		end

	on_run_archive is
			-- Action to be performed to start metric calcuation for generating archive information
		local
			l_selected_metrics: LIST [STRING]
			l_msg: STRING
			l_error_dialog: EV_ERROR_DIALOG
			l_retried: BOOLEAN
			l_file_name: STRING
			l_archive: LIST [EB_METRIC_ARCHIVE_NODE]
			l_source_domain: EB_METRIC_DOMAIN
			l_metric: EB_METRIC
			l_value: DOUBLE
			l_archive_node: EB_METRIC_ARCHIVE_NODE
			l_domain_generator: QL_TARGET_DOMAIN_GENERATOR
			l_archive_tbl: HASH_TABLE [EB_METRIC_ARCHIVE_NODE, STRING]
		do
			create l_domain_generator
			if not l_retried then
				l_selected_metrics := metric_selector.selected_metrics
				l_msg := check_selected_metrics (l_selected_metrics)
				if l_msg /= Void then
					create l_error_dialog.make_with_text (l_msg)
					l_error_dialog.set_buttons (<<metric_names.t_ok>>)
					l_error_dialog.show_modal_to_window (metric_tool.development_window.window)
				else
					l_file_name := new_archive_file_name_text.text
					create {ARRAYED_LIST [EB_METRIC_ARCHIVE_NODE]} l_archive.make (l_selected_metrics.count)
					l_source_domain := domain_selector.domain
					setup_metric_evaluation_callback (l_domain_generator)
					is_archive_running := True
					from
						l_selected_metrics.start
					until
						l_selected_metrics.after
					loop
						l_metric := metric_manager.metric_with_name (l_selected_metrics.item)
						l_metric.disable_fill_domain
						l_value := l_metric.value (l_source_domain).first.value
						create l_archive_node.make (l_metric.name, metric_type_id (l_metric), create{DATE_TIME}.make_now, l_value, l_source_domain)
						l_archive.extend (l_archive_node)
						l_selected_metrics.forth
					end
					is_archive_running := False
					synchronize_after_metric_evaluation (l_domain_generator)
					if not clean_btn.is_selected then
						l_archive_tbl := metric_archive_from_file (l_file_name)
						if l_archive_tbl /= Void then
							l_archive := merge_archive_from_archive_table (l_archive_tbl, l_archive)
						end
					end
					metric_manager.store_metric_archive (l_file_name, l_archive)
					display_status_message ("")
				end
			end
		rescue
			l_retried := True
			synchronize_after_metric_evaluation (l_domain_generator)
			if not is_cancel_evaluation_requested then
				display_error_message
			else
				if l_domain_generator.error_handler.has_error then
					display_status_message (l_domain_generator.error_handler.error_list.last.out)
				else
					display_status_message (tag_name)
				end
			end
			retry
		end

	on_stop_metric_evaluation (a_item: QL_ITEM) is
			-- Action to be performed when metric evaluation is stopped
		local
			l_domain_generator: QL_CLASS_DOMAIN_GENERATOR
		do
			if is_cancel_evaluation_requested then
				create l_domain_generator
				if is_compiling then
					l_domain_generator.error_handler.insert_interrupt_error (metric_names.e_interrupted_by_compile)
				else
					l_domain_generator.error_handler.insert_interrupt_error (metric_names.e_interrupted_by_user)
				end
			end
		end

	on_stop_metric_evaluation_button_pressed is
			-- Action to be performed when stop button is pressed.
		do
			is_cancel_evaluation_requested := True
		end

	on_comparison_archive_selected (a_text_field: EV_TEXT_FIELD) is
			-- Action to be performed when reference metric archive or current metric archive is selected
		do
			a_text_field.set_text (open_file_dialog.file_name)
		end

	on_reference_archive_checked (a_file_exist: BOOLEAN; a_valid: BOOLEAN; a_archive: LIST [EB_METRIC_ARCHIVE_NODE]) is
			-- Action to be performed when archive file specified in `reference_metric_archive_text' is checked
			-- If `a_valid' is True, `a_archive' is the archive, otherwise, `a_archive' is Void.
		do
			is_reference_metric_archive_ok := a_valid
			if a_valid then
				reference_metric_archive_text.set_foreground_color (default_foreground_color)
				reference_metric_archive_text.set_tooltip (tooltip_from_archive (a_archive))
			else
				reference_metric_archive_text.set_foreground_color (red_color)
				if a_file_exist then
					reference_metric_archive_text.set_tooltip (metric_names.t_selected_archive_not_valid)
				else
					reference_metric_archive_text.set_tooltip (metric_names.t_selected_file_not_exists)
				end
			end
			last_reference_archive := a_archive
			synchronize_compare_metric_button
		end

	on_current_archive_checked (a_file_exist: BOOLEAN; a_valid: BOOLEAN; a_archive: LIST [EB_METRIC_ARCHIVE_NODE]) is
			-- Action to be performed when archive file specified in `current_metric_archive_text' is checked
			-- If `a_valid' is True, `a_archive' is the archive, otherwise, `a_archive' is Void.
		do
			is_current_metric_archive_ok := a_valid
			if a_valid then
				current_metric_archive_text.set_foreground_color (default_foreground_color)
				current_metric_archive_text.set_tooltip (tooltip_from_archive (a_archive))
			else
				current_metric_archive_text.set_foreground_color (red_color)
				if a_file_exist then
					current_metric_archive_text.set_tooltip (metric_names.t_selected_archive_not_valid)
				else
					current_metric_archive_text.set_tooltip (metric_names.t_selected_file_not_exists)
				end
			end
			last_current_archive := a_archive
			synchronize_compare_metric_button
		end

	on_compare_archives is
			-- Action to be performed when user wants to compare selected archives
		local
			l_cur_archive: STRING
			l_ref_archive: STRING
			l_ref_arc: LIST [EB_METRIC_ARCHIVE_NODE]
			l_cur_arc: LIST [EB_METRIC_ARCHIVE_NODE]
			l_is_ref_ok: BOOLEAN
			l_is_cur_ok: BOOLEAN
			l_error: BOOLEAN
		do
			prepare_file_name (reference_metric_archive_text)
			l_ref_archive ?= reference_metric_archive_text.data
			if l_ref_archive /= Void then
				l_ref_archive.left_adjust
				l_ref_archive.right_adjust
				if not l_ref_archive.is_empty then
					l_ref_arc := load_archive (l_ref_archive)
					l_error := not is_last_load_successful
					l_is_ref_ok := is_last_load_successful
				end
			else
				l_error := True
			end
			if not l_error then
				prepare_file_name (current_metric_archive_text)
				l_cur_archive ?= current_metric_archive_text.data
				if l_cur_archive /= Void then
					l_cur_archive.left_adjust
					l_cur_archive.right_adjust
					if not l_cur_archive.is_empty then
						l_cur_arc := load_archive (l_cur_archive)
						l_error := not is_last_load_successful
						l_is_cur_ok := is_last_load_successful
					end
				else
					l_error := True
				end
			end
			if not l_error then
				if l_is_ref_ok or l_is_cur_ok then
					metric_tool.register_archive_result_for_display (l_ref_arc, l_cur_arc)
					metric_tool.go_to_result
				else
					display_message (metric_names.t_no_archive_selected)
				end
			end
		end

	on_pointer_double_click_on_metric_item (a_name: STRING) is
			-- Action to be performed when pointer double clicks on a metric named `a_name' in `metric_selector'.
		require
			a_name_attached: a_name /= Void
		do
			if metric_manager.has_metric (a_name) then
				metric_tool.go_to_definition (metric_manager.metric_with_name (a_name), False)
			end
		end

feature -- Notification

	update (a_observable: QL_OBSERVABLE; a_data: ANY) is
			-- Notification from `a_observable' indicating that `a_data' changed.
		local
			l_data: BOOLEAN_REF
		do
			metric_selector.load_metrics (True)
			metric_selector.try_to_selected_last_metric
			if metric_selector.last_selected_metric = Void then
				metric_selector.select_first_metric
			end
			if a_data /= Void then
				l_data ?= a_data
				if l_data /= Void then
					if l_data.item then
							-- This is an update when Eiffel compilation starts.
						if is_archive_running then
							on_stop_metric_evaluation_button_pressed
						end
						synchronize_when_compile_start
					else
							-- This is an update when Eiffel compilation stops.
						synchronize_when_compile_stop
					end
				end
			end
		end

feature {NONE} -- Implementation

	open_file_dialog: EB_FILE_OPEN_DIALOG
			-- Dialog to select a file

	last_domain_generator_tick_interval: NATURAL_64
			-- Last stored tick domain generator interval

	internal_timer: EV_TIMEOUT
			-- Internal timer

	reference_archive_timer: EV_TIMEOUT
			-- Timer used in `reference_metric_archive_text'

	current_archive_timer: EV_TIMEOUT
			-- Timer used in `current_metric_archive_text'

	check_archive_validity (a_text_field: EV_TEXT_FIELD; a_action: PROCEDURE [ANY, TUPLE [a_file_exist: BOOLEAN; a_archive_valid: BOOLEAN; a_archive: LIST [EB_METRIC_ARCHIVE_NODE]]]; a_timer: EV_TIMEOUT) is
			-- Check vadility of archive defined in `a_text_field' and invoke `a_action' after checking.
			-- If the specified archive file doesn't exist, the first boolean argument (a_file_exist) of `a_action' will be False, otherwise True.
			-- If the archive file exists, the second will be set to True if the archive is valid, otherwise False.
			-- If `a_archive_valid' is True, `a_archive' is the archive, otherwise, `a_archive' is Void.
		require
			a_text_field_attached: a_text_field /= Void
			a_action_attached: a_action /= Void
			a_timer_attached: a_timer /= Void
		local
			l_file: RAW_FILE
			l_file_name: STRING
			l_archive: LIST [EB_METRIC_ARCHIVE_NODE]
		do
			l_file_name := a_text_field.text
			create l_file.make (l_file_name)
			if l_file.exists and then not l_file.is_directory then
				l_archive := metric_manager.load_metric_archive (l_file_name)
				a_action.call ([True, not metric_manager.has_error, l_archive])
				metric_manager.clear_last_error
			else
				a_action.call ([False, False, Void])
			end
			a_timer.set_interval (0)
		end

	check_selected_metrics (a_list: LIST [STRING]): STRING is
			-- Check vadility of metrics whose names are in `a_list'.
			-- Return message if error occurs, otherwise, return Void.
		require
			a_list_attached: a_list /= Void
		do
			if a_list.is_empty then
				Result := metric_names.e_no_metric_is_selected
			else
				from
					a_list.start
				until
					a_list.after or Result /= Void
				loop
					if not metric_manager.is_metric_valid (a_list.item) then
						Result := metric_names.t_metric + " %"" + a_list.item + "%" " + metric_names.t_metric_is_not_valid
					else
						a_list.forth
					end
				end
			end
		end

	metric_archive_from_file (a_file_name: STRING): HASH_TABLE [EB_METRIC_ARCHIVE_NODE, STRING] is
			-- Metric archive from file `a_file_name'.
			-- Key is metric name, value is the metric archive for that metric.
			-- Void if error occurs.
		local
			l_archive: LIST [EB_METRIC_ARCHIVE_NODE]
			l_metric_manager: like metric_manager
		do
			l_metric_manager := metric_manager
			l_metric_manager.clear_last_error
			l_archive := l_metric_manager.load_metric_archive (a_file_name)
			if not l_metric_manager.has_error then
				create Result.make (l_archive.count)
				from
					l_archive.start
				until
					l_archive.after
				loop
					Result.force (l_archive.item, l_archive.item.metric_name.as_lower)
					l_archive.forth
				end
			end
		end

	merge_archive_from_archive_table (a_tbl: HASH_TABLE [EB_METRIC_ARCHIVE_NODE, STRING]; a_list: LIST [EB_METRIC_ARCHIVE_NODE]): LIST [EB_METRIC_ARCHIVE_NODE] is
			-- Merge new metric archive information into `a_tbl'.
		require
			a_tbl_attached: a_tbl /= Void
			a_list_attached: a_list /= Void
		do
			from
				a_list.start
			until
				a_list.after
			loop
				a_tbl.force (a_list.item, a_list.item.metric_name.as_lower)
				a_list.forth
			end
			create {LINKED_LIST [EB_METRIC_ARCHIVE_NODE]} Result.make
			from
				a_tbl.start
			until
				a_tbl.after
			loop
				Result.extend (a_tbl.item_for_iteration)
				a_tbl.forth
			end
		ensure
			result_attached: Result /= Void
		end

	setup_metric_evaluation_callback (a_domain_generator: QL_DOMAIN_GENERATOR) is
			-- Setup metric evaluation callback, because when metric is running, we want to keep GUI alive.
		require
			a_domain_generator_attached: a_domain_generator /= Void
		do
			last_domain_generator_tick_interval := a_domain_generator.interval
			a_domain_generator.set_interval (20)
			a_domain_generator.tick_actions.wipe_out
			a_domain_generator.tick_actions.extend (agent on_stop_metric_evaluation)
			a_domain_generator.tick_actions.extend (agent on_process_gui)
			is_cancel_evaluation_requested := False
			stop_btn.enable_sensitive
			run_btn.disable_sensitive
			new_archive_file_name_text.disable_sensitive
			new_archive_browse_btn.disable_sensitive
			clean_btn.disable_sensitive
		end

	synchronize_after_metric_evaluation (a_domain_generator: QL_DOMAIN_GENERATOR) is
			-- Synchronize domain generator after metric evaluation.
		require
			a_domain_generator_attached: a_domain_generator /= Void
		do
			a_domain_generator.tick_actions.wipe_out
			a_domain_generator.set_interval (last_domain_generator_tick_interval)
			stop_btn.disable_sensitive
			run_btn.enable_sensitive
			new_archive_file_name_text.enable_sensitive
			new_archive_browse_btn.enable_sensitive
			if is_new_archive_file_selected and then is_new_archive_file_exists then
				clean_btn.enable_sensitive
			end
		end

	synchronize_compare_metric_button is
			-- Synchronize `compare_btn'.
		do
			if is_reference_metric_archive_ok or is_current_metric_archive_ok then
				compare_btn.enable_sensitive
			else
				compare_btn.disable_sensitive
			end
		end

	red_color: EV_COLOR is
			-- Red color
		do
			Result := (create {EV_STOCK_COLORS}).red
		ensure
			result_attached: Result /= Void
		end

	default_foreground_color: EV_COLOR is
			-- Default foreground_color is
		do
			Result := (create {EV_STOCK_COLORS}).default_foreground_color
		ensure
			result_attached: Result /= Void
		end

	tooltip_from_archive (a_archive: LIST [EB_METRIC_ARCHIVE_NODE]): STRING is
			-- Tooltip from `a_archive' describing how many metric are archived in `a_archive' and what are they.
		require
			a_archive_attached: a_archive /= Void
		local
			l_temp_str: STRING
			l_cnt: INTEGER
		do
			create Result.make (512)
			l_cnt := a_archive.count
			if l_cnt > 1 then
				Result.append ("There are ")
				l_temp_str := " metrics in archive:%N"
			else
				Result.append ("There is ")
				if l_cnt = 0 then
					l_temp_str := " metric in archive."
				else
					l_temp_str := " metric in archive:%N"
				end
			end
			Result.append (l_cnt.out)
			Result.append (l_temp_str)
			if l_cnt > 0 then
				from
					a_archive.start
				until
					a_archive.after
				loop
					Result.append ("%T")
					Result.append (a_archive.item.metric_name)
					Result.append (": ")
					Result.append (a_archive.item.value.out)
					Result.append ("%N")
					a_archive.forth
				end
			end
		end

	prepare_file_name (a_text_field: EV_TEXT_FIELD) is
			-- Prepare file name specified in `a_text_field'.
		require
			a_text_field_attached: a_text_field /= Void
		local
			url_address, http, ftp, file: STRING
			l_is_file: BOOLEAN
		do
			url_address := a_text_field.text.twin
			a_text_field.set_data (Void)
			if url_address /= Void and then not url_address.is_empty then
				http := url_address.substring (1, 7).as_lower
				ftp := url_address.substring (1, 6).as_lower
				file := url_address.substring (1, 7).as_lower
				if equal (file, "file://") then
					l_is_file := True
					url_address := url_address.substring (8, url_address.count)
				elseif equal (ftp, "ftp://") or equal (http, "http://") then
				else
					l_is_file := True
				end
			else
				l_is_file := True
			end
			if l_is_file then
					-- It is a local file.
				a_text_field.set_data (url_address)
			else
					-- It is a network address.
				if a_text_field = current_metric_archive_text then
					a_text_field.set_data (save_file_from_url (url_address, "transferred_current_archive.xml"))
				elseif a_text_field = reference_metric_archive_text then
					a_text_field.set_data (save_file_from_url (url_address, "transferred_reference_archive.xml"))
				end
			end
		end

	save_file_from_url (a_url_address: STRING; a_target_file_name: STRING): STRING is
			-- Save file from url address `a_url_address' and return the saved file name in local machine.
		require
			a_url_address_attached: a_url_address /= Void
			a_target_file_name_attached: a_target_file_name /= Void
		local
			file_name: FILE_NAME
			target_file: STRING
			directory: DIRECTORY
			file: PLAIN_TEXT_FILE
			error_dialog: EB_INFORMATION_DIALOG
		do
			create directory.make (metric_manager.userdefined_metrics_path)
			if not directory.exists then
				directory.create_dir
			end
			create file_name.make_from_string (metric_manager.userdefined_metrics_path + operating_environment.directory_separator.out + a_target_file_name)
			create file.make (file_name)

			if file.exists then
				create confirm_dialog.make_with_text_and_actions ("Remote file will be loaded in:%N" + file_name +
								"%NThis file already exists. Overwrite?", actions_array)
				confirm_dialog.show_modal_to_window (metric_tool.development_window.window)
			end
			if not file.exists or overwrite then
				target_file := "file://" + file_name
				transfer_manager_builder.set_timeout (10)
				transfer_manager_builder.wipe_out
				transfer_manager_builder.add_transaction (a_url_address, target_file)
				if not transfer_manager_builder.last_added_source_correct then
					create error_dialog.make_with_text ("Unable to read remote file.%NPlease check URL:%N" + a_url_address)
					error_dialog.show_modal_to_window (metric_tool.development_window.window)
				elseif not transfer_manager_builder.last_added_target_correct then
					create error_dialog.make_with_text ("Unable to load remote file in:%N" + file_name +
											"Please make sure file does not exist or is writable.")
					error_dialog.show_modal_to_window (metric_tool.development_window.window)
				else
					transfer_manager_builder.build_manager
					metric_tool.development_window.window.set_pointer_style (metric_tool.development_window.Wait_cursor)
					transfer_manager_builder.transfer
					metric_tool.development_window.window.set_pointer_style (metric_tool.development_window.Standard_cursor)
					if transfer_manager_builder.transfer_succeeded then
						Result := file_name
					else
						create error_dialog.make_with_text ("Unable to transfer remote file.%NReason: "
																+ transfer_manager_builder.error_reason)
						error_dialog.show_modal_to_window (metric_tool.development_window.window)
					end
				end
			end
		end

feature -- Overwritting

	overwrite: BOOLEAN
		-- Overwrite file?

	confirm_dialog: EV_CONFIRMATION_DIALOG
			-- Dialog to confirm file overwritting.

	actions_array: ARRAY [PROCEDURE [ANY, TUPLE]] is
			-- Actions to be performed for `confirm_dialog'.
		do
			create Result.make (1, 2)
			Result.put (agent overwrite_action, 1)
			Result.put (agent abort_overwrite_action, 2)
		ensure
			filled_array: Result @ 1 /= Void and Result @ 2 /= Void
		end

	overwrite_action is
			-- Action to be performed on clicking on `yes_button' in `confirm_dialog'.
		do
			overwrite := True
		end

	abort_overwrite_action is
			-- Action to be performed on clicking on `no_button' in `confirm_dialog'.
		do
			overwrite := False
		end

	display_message (a_msg: STRING) is
			-- Display error message `a_msg'.
		require
			a_msg_attached: a_msg /= Void
		local
			l_dlg: EV_ERROR_DIALOG
		do
			create l_dlg.make_with_text (a_msg)
			l_dlg.set_buttons_and_actions (<<metric_names.t_ok>>, <<agent do_nothing>>)
			l_dlg.show_relative_to_window (metric_tool.development_window.window)
		end

	load_archive (a_file_name: STRING): LIST [EB_METRIC_ARCHIVE_NODE] is
			-- Load archive from file `a_file_name'.
		require
			a_file_name_attached: a_file_name /= Void
		do
			metric_manager.clear_last_error
			Result := metric_manager.load_metric_archive (a_file_name)
			is_last_load_successful := not metric_manager.has_error
			if not is_last_load_successful then
				display_error_message
			end
		end

invariant
	open_file_dialog_attached: open_file_dialog /= Void
	internal_timer_attached: internal_timer /= Void
	reference_archive_timer_attached: reference_archive_timer /= Void
	current_archive_timer_attched: current_archive_timer /= Void
	domain_selector_attached: domain_selector /= Void
	metric_selector_attached: metric_selector /= Void

indexing
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful,	but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"

end -- class EB_METRIC_ARCHIVE_PANEL

