indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	DOC_BUILDER_WINDOW_IMP

inherit
	EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end
			
	CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			Precursor {EV_TITLED_WINDOW}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_menu_bar_1
			create file_menu
			create new_menu_item
			create l_ev_menu_separator_1
			create open_menu_item
			create open_project_menu_item
			create close_file_menu_item
			create l_ev_menu_separator_2
			create save_menu_item
			create l_ev_menu_separator_3
			create exit_menu_item
			create document_menu
			create cut_menu_item
			create copy_menu_item
			create paste_menu_item
			create l_ev_menu_separator_4
			create font_menu_item
			create wrap_menu_item
			create l_ev_menu_separator_5
			create parser_menu_item
			create l_ev_menu_separator_6
			create search_menu_item
			create view_menu
			create element_selector_menu
			create types_selector_menu
			create doc_selector_menu
			create attribute_selector_menu
			create sub_element_menu
			create project_menu
			create settings_menu_item
			create tool_menu
			create validator_menu_item
			create gen_menu_item
			create expression_menu_item
			create character_menu_item
			create shortcuts_menu_item
			create help_menu
			create help_menu_item
			create l_ev_vertical_box_1
			create l_ev_frame_1
			create l_ev_horizontal_box_1
			create main_toolbar
			create toolbar_new
			create toolbar_open
			create toolbar_save
			create l_ev_tool_bar_separator_1
			create toolbar_cut
			create toolbar_copy
			create toolbar_paste
			create l_ev_tool_bar_separator_2
			create toolbar_xml_format
			create toolbar_code_format
			create l_ev_tool_bar_separator_3
			create toolbar_validate
			create toolbar_properties
			create toolbar_link_check
			create l_ev_tool_bar_separator_4
			create l_ev_label_1
			create output_combo
			create l_ev_tool_bar_5
			create toolbar_highlight_toggle
			create l_ev_cell_1
			create l_ev_vertical_split_area_1
			create l_ev_horizontal_split_area_1
			create left_tool
			create l_ev_vertical_box_2
			create main_tool
			create l_ev_horizontal_box_2
			create l_ev_label_2
			create l_ev_cell_2
			create l_ev_cell_3
			create l_ev_tool_bar_6
			create main_close
			create l_ev_vertical_split_area_2
			create selector
			create documentation_area
			create document_selector
			create toc_container
			create l_ev_vertical_split_area_3
			create l_ev_vertical_box_3
			create toc_area
			create toc_vertical_toolbar
			create toc_new_button
			create toc_open_button
			create toc_save_button
			create l_ev_cell_4
			create toc_new_heading
			create toc_new_page
			create toc_remove_topic
			create l_ev_cell_5
			create toc_list_button
			create toc_merge_button
			create toc_sort_button
			create l_ev_cell_6
			create document_toc
			create toc_status_bar
			create l_ev_frame_2
			create toc_status_report_label
			create node_properties_tool
			create node_properties_area
			create l_ev_frame_3
			create l_ev_horizontal_box_3
			create l_ev_label_3
			create l_ev_cell_7
			create l_ev_cell_8
			create l_ev_tool_bar_7
			create node_properties_close
			create node_properties_list
			create element_area
			create element_split_area
			create element_selector
			create attribute_list_tool
			create l_ev_vertical_box_4
			create l_ev_frame_4
			create l_ev_horizontal_box_4
			create l_ev_label_4
			create l_ev_cell_9
			create l_ev_cell_10
			create l_ev_tool_bar_8
			create attribute_list_close
			create attribute_list
			create type_area
			create type_selector
			create sub_element_tool
			create l_ev_vertical_box_5
			create l_ev_frame_5
			create l_ev_horizontal_box_5
			create title_label
			create l_ev_cell_11
			create l_ev_cell_12
			create l_ev_tool_bar_9
			create sub_element_close
			create sub_elements_list
			create editor_tool
			create l_ev_vertical_box_6
			create l_ev_frame_6
			create l_ev_horizontal_box_6
			create l_ev_label_5
			create l_ev_cell_13
			create l_ev_cell_14
			create l_ev_tool_bar_10
			create editor_close
			create document_area
			create l_ev_horizontal_box_7
			create document_editor
			create document_status_bar
			create l_ev_frame_7
			create report_label
			create l_ev_frame_8
			create line_pos_label
			
				-- Build_widget_structure.
			set_menu_bar (l_ev_menu_bar_1)
			l_ev_menu_bar_1.extend (file_menu)
			file_menu.extend (new_menu_item)
			file_menu.extend (l_ev_menu_separator_1)
			file_menu.extend (open_menu_item)
			file_menu.extend (open_project_menu_item)
			file_menu.extend (close_file_menu_item)
			file_menu.extend (l_ev_menu_separator_2)
			file_menu.extend (save_menu_item)
			file_menu.extend (l_ev_menu_separator_3)
			file_menu.extend (exit_menu_item)
			l_ev_menu_bar_1.extend (document_menu)
			document_menu.extend (cut_menu_item)
			document_menu.extend (copy_menu_item)
			document_menu.extend (paste_menu_item)
			document_menu.extend (l_ev_menu_separator_4)
			document_menu.extend (font_menu_item)
			document_menu.extend (wrap_menu_item)
			document_menu.extend (l_ev_menu_separator_5)
			document_menu.extend (parser_menu_item)
			document_menu.extend (l_ev_menu_separator_6)
			document_menu.extend (search_menu_item)
			l_ev_menu_bar_1.extend (view_menu)
			view_menu.extend (element_selector_menu)
			view_menu.extend (types_selector_menu)
			view_menu.extend (doc_selector_menu)
			view_menu.extend (attribute_selector_menu)
			view_menu.extend (sub_element_menu)
			l_ev_menu_bar_1.extend (project_menu)
			project_menu.extend (settings_menu_item)
			l_ev_menu_bar_1.extend (tool_menu)
			tool_menu.extend (validator_menu_item)
			tool_menu.extend (gen_menu_item)
			tool_menu.extend (expression_menu_item)
			tool_menu.extend (character_menu_item)
			tool_menu.extend (shortcuts_menu_item)
			l_ev_menu_bar_1.extend (help_menu)
			help_menu.extend (help_menu_item)
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_frame_1)
			l_ev_frame_1.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (main_toolbar)
			main_toolbar.extend (toolbar_new)
			main_toolbar.extend (toolbar_open)
			main_toolbar.extend (toolbar_save)
			main_toolbar.extend (l_ev_tool_bar_separator_1)
			main_toolbar.extend (toolbar_cut)
			main_toolbar.extend (toolbar_copy)
			main_toolbar.extend (toolbar_paste)
			main_toolbar.extend (l_ev_tool_bar_separator_2)
			main_toolbar.extend (toolbar_xml_format)
			main_toolbar.extend (toolbar_code_format)
			main_toolbar.extend (l_ev_tool_bar_separator_3)
			main_toolbar.extend (toolbar_validate)
			main_toolbar.extend (toolbar_properties)
			main_toolbar.extend (toolbar_link_check)
			main_toolbar.extend (l_ev_tool_bar_separator_4)
			l_ev_horizontal_box_1.extend (l_ev_label_1)
			l_ev_horizontal_box_1.extend (output_combo)
			l_ev_horizontal_box_1.extend (l_ev_tool_bar_5)
			l_ev_tool_bar_5.extend (toolbar_highlight_toggle)
			l_ev_horizontal_box_1.extend (l_ev_cell_1)
			l_ev_vertical_box_1.extend (l_ev_vertical_split_area_1)
			l_ev_vertical_split_area_1.extend (l_ev_horizontal_split_area_1)
			l_ev_horizontal_split_area_1.extend (left_tool)
			left_tool.extend (l_ev_vertical_box_2)
			l_ev_vertical_box_2.extend (main_tool)
			main_tool.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (l_ev_label_2)
			l_ev_horizontal_box_2.extend (l_ev_cell_2)
			l_ev_horizontal_box_2.extend (l_ev_cell_3)
			l_ev_horizontal_box_2.extend (l_ev_tool_bar_6)
			l_ev_tool_bar_6.extend (main_close)
			l_ev_vertical_box_2.extend (l_ev_vertical_split_area_2)
			l_ev_vertical_split_area_2.extend (selector)
			selector.extend (documentation_area)
			documentation_area.extend (document_selector)
			selector.extend (toc_container)
			toc_container.extend (l_ev_vertical_split_area_3)
			l_ev_vertical_split_area_3.extend (l_ev_vertical_box_3)
			l_ev_vertical_box_3.extend (toc_area)
			toc_area.extend (toc_vertical_toolbar)
			toc_vertical_toolbar.extend (toc_new_button)
			toc_vertical_toolbar.extend (toc_open_button)
			toc_vertical_toolbar.extend (toc_save_button)
			toc_vertical_toolbar.extend (l_ev_cell_4)
			toc_vertical_toolbar.extend (toc_new_heading)
			toc_vertical_toolbar.extend (toc_new_page)
			toc_vertical_toolbar.extend (toc_remove_topic)
			toc_vertical_toolbar.extend (l_ev_cell_5)
			toc_vertical_toolbar.extend (toc_list_button)
			toc_vertical_toolbar.extend (toc_merge_button)
			toc_vertical_toolbar.extend (toc_sort_button)
			toc_vertical_toolbar.extend (l_ev_cell_6)
			toc_area.extend (document_toc)
			l_ev_vertical_box_3.extend (toc_status_bar)
			toc_status_bar.extend (l_ev_frame_2)
			l_ev_frame_2.extend (toc_status_report_label)
			l_ev_vertical_split_area_3.extend (node_properties_tool)
			node_properties_tool.extend (node_properties_area)
			node_properties_area.extend (l_ev_frame_3)
			l_ev_frame_3.extend (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.extend (l_ev_label_3)
			l_ev_horizontal_box_3.extend (l_ev_cell_7)
			l_ev_horizontal_box_3.extend (l_ev_cell_8)
			l_ev_horizontal_box_3.extend (l_ev_tool_bar_7)
			l_ev_tool_bar_7.extend (node_properties_close)
			node_properties_area.extend (node_properties_list)
			selector.extend (element_area)
			element_area.extend (element_split_area)
			element_split_area.extend (element_selector)
			element_split_area.extend (attribute_list_tool)
			attribute_list_tool.extend (l_ev_vertical_box_4)
			l_ev_vertical_box_4.extend (l_ev_frame_4)
			l_ev_frame_4.extend (l_ev_horizontal_box_4)
			l_ev_horizontal_box_4.extend (l_ev_label_4)
			l_ev_horizontal_box_4.extend (l_ev_cell_9)
			l_ev_horizontal_box_4.extend (l_ev_cell_10)
			l_ev_horizontal_box_4.extend (l_ev_tool_bar_8)
			l_ev_tool_bar_8.extend (attribute_list_close)
			l_ev_vertical_box_4.extend (attribute_list)
			selector.extend (type_area)
			type_area.extend (type_selector)
			l_ev_vertical_split_area_2.extend (sub_element_tool)
			sub_element_tool.extend (l_ev_vertical_box_5)
			l_ev_vertical_box_5.extend (l_ev_frame_5)
			l_ev_frame_5.extend (l_ev_horizontal_box_5)
			l_ev_horizontal_box_5.extend (title_label)
			l_ev_horizontal_box_5.extend (l_ev_cell_11)
			l_ev_horizontal_box_5.extend (l_ev_cell_12)
			l_ev_horizontal_box_5.extend (l_ev_tool_bar_9)
			l_ev_tool_bar_9.extend (sub_element_close)
			l_ev_vertical_box_5.extend (sub_elements_list)
			l_ev_horizontal_split_area_1.extend (editor_tool)
			editor_tool.extend (l_ev_vertical_box_6)
			l_ev_vertical_box_6.extend (l_ev_frame_6)
			l_ev_frame_6.extend (l_ev_horizontal_box_6)
			l_ev_horizontal_box_6.extend (l_ev_label_5)
			l_ev_horizontal_box_6.extend (l_ev_cell_13)
			l_ev_horizontal_box_6.extend (l_ev_cell_14)
			l_ev_horizontal_box_6.extend (l_ev_tool_bar_10)
			l_ev_tool_bar_10.extend (editor_close)
			l_ev_vertical_box_6.extend (document_area)
			document_area.extend (l_ev_horizontal_box_7)
			l_ev_horizontal_box_7.extend (document_editor)
			document_area.extend (document_status_bar)
			document_status_bar.extend (l_ev_frame_7)
			l_ev_frame_7.extend (report_label)
			document_status_bar.extend (l_ev_frame_8)
			l_ev_frame_8.extend (line_pos_label)
			
			set_minimum_width (1024)
			set_minimum_height (768)
			set_title ("Document Builder")
			file_menu.set_text ("File")
			new_menu_item.set_text ("New..")
			open_menu_item.disable_sensitive
			open_menu_item.set_text ("Open File..")
			open_menu_item.set_pixmap (icon_open_file_ico)
			open_project_menu_item.set_text ("Open Project..")
			close_file_menu_item.disable_sensitive
			close_file_menu_item.set_text ("Close")
			save_menu_item.disable_sensitive
			save_menu_item.set_text ("Save")
			save_menu_item.set_pixmap (icon_save_ico)
			exit_menu_item.set_text ("Exit")
			exit_menu_item.set_pixmap (icon_close_color_ico)
			document_menu.set_text ("Edit")
			cut_menu_item.disable_sensitive
			cut_menu_item.set_text ("Cut")
			copy_menu_item.disable_sensitive
			copy_menu_item.set_text ("Copy")
			paste_menu_item.disable_sensitive
			paste_menu_item.set_text ("Paste")
			font_menu_item.set_text ("Font...")
			wrap_menu_item.enable_select
			wrap_menu_item.set_text ("Word wrap")
			parser_menu_item.set_text ("Parser...")
			search_menu_item.set_text ("Search...")
			view_menu.set_text ("View")
			element_selector_menu.enable_select
			element_selector_menu.set_text ("Schema elements")
			types_selector_menu.enable_select
			types_selector_menu.set_text ("Schema types")
			doc_selector_menu.enable_select
			doc_selector_menu.set_text ("Document Selector")
			attribute_selector_menu.enable_select
			attribute_selector_menu.set_text ("Element/Type attributes")
			sub_element_menu.enable_select
			sub_element_menu.set_text ("Sub element selector")
			project_menu.set_text ("Project")
			settings_menu_item.set_text ("Settings..")
			tool_menu.set_text ("Tools")
			validator_menu_item.set_text ("Validator..")
			gen_menu_item.set_text ("Generator..")
			expression_menu_item.set_text ("Expression Builder..")
			character_menu_item.set_text ("Character Codes..")
			shortcuts_menu_item.set_text ("Shortcuts..")
			help_menu.set_text ("Help")
			help_menu_item.set_text ("Contents")
			l_ev_vertical_box_1.set_padding_width (2)
			l_ev_vertical_box_1.disable_item_expand (l_ev_frame_1)
			l_ev_frame_1.set_minimum_height (30)
			l_ev_horizontal_box_1.disable_item_expand (main_toolbar)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_label_1)
			l_ev_horizontal_box_1.disable_item_expand (output_combo)
			main_toolbar.set_minimum_height (22)
			toolbar_new.disable_sensitive
			toolbar_new.set_tooltip ("New File")
			toolbar_new.set_pixmap (icon_new_doc_ico)
			toolbar_open.disable_sensitive
			toolbar_open.set_tooltip ("Open File")
			toolbar_open.set_pixmap (icon_open_file_ico)
			toolbar_save.disable_sensitive
			toolbar_save.set_tooltip ("Save")
			toolbar_save.set_pixmap (icon_save_ico)
			toolbar_cut.disable_sensitive
			toolbar_cut.set_tooltip ("Cut")
			toolbar_cut.set_pixmap (icon_cut_color_ico)
			toolbar_copy.disable_sensitive
			toolbar_copy.set_tooltip ("Copy")
			toolbar_copy.set_pixmap (icon_copy_color_ico)
			toolbar_paste.disable_sensitive
			toolbar_paste.set_tooltip ("Paste")
			toolbar_paste.set_pixmap (icon_paste_ico)
			toolbar_xml_format.disable_sensitive
			toolbar_xml_format.set_tooltip ("Pretty XML")
			toolbar_xml_format.set_pixmap (icon_format_text_color_ico)
			toolbar_code_format.disable_sensitive
			toolbar_code_format.set_tooltip ("Pretty code format")
			toolbar_code_format.set_pixmap (icon_code_format_ico)
			toolbar_validate.disable_sensitive
			toolbar_validate.set_tooltip ("Validate document against schema")
			toolbar_validate.set_pixmap (icon_validate_ico)
			toolbar_properties.disable_sensitive
			toolbar_properties.set_tooltip ("Document Properties")
			toolbar_properties.set_pixmap (icon_info_ico)
			toolbar_link_check.disable_sensitive
			toolbar_link_check.set_tooltip ("Validate Document Links")
			toolbar_link_check.set_pixmap (icon_link_check_ico_ico)
			l_ev_label_1.set_text ("Filter ")
			l_ev_label_1.align_text_left
			output_combo.set_tooltip ("Output filter transformation")
			output_combo.set_minimum_width (250)
			toolbar_highlight_toggle.set_tooltip ("Highlight filtered sections in editor")
			toolbar_highlight_toggle.set_pixmap (icon_highlight_png)
			left_tool.set_style (1)
			l_ev_vertical_box_2.disable_item_expand (main_tool)
			main_tool.set_style (2)
			l_ev_horizontal_box_2.set_padding_width (padding_width)
			l_ev_horizontal_box_2.set_border_width (border_width)
			l_ev_horizontal_box_2.disable_item_expand (l_ev_tool_bar_6)
			l_ev_label_2.set_text (" Browser")
			l_ev_label_2.align_text_left
			main_close.set_pixmap (icon_close_color_ico)
			selector.set_minimum_width (200)
			selector.set_minimum_height (400)
			selector.set_item_text (documentation_area, "Project Files")
			selector.set_item_text (toc_container, "TOC View")
			selector.set_item_text (element_area, "Schema Elements")
			selector.set_item_text (type_area, "Types")
			documentation_area.set_padding_width (padding_width)
			documentation_area.set_border_width (border_width)
			toc_container.set_minimum_height (400)
			l_ev_vertical_split_area_3.set_minimum_height (400)
			l_ev_vertical_box_3.set_minimum_height (310)
			l_ev_vertical_box_3.disable_item_expand (toc_status_bar)
			toc_area.set_minimum_height (0)
			toc_area.set_padding_width (5)
			toc_area.set_border_width (2)
			toc_area.disable_item_expand (toc_vertical_toolbar)
			toc_vertical_toolbar.set_minimum_height (0)
			toc_vertical_toolbar.set_border_width (2)
			toc_vertical_toolbar.disable_item_expand (toc_new_button)
			toc_vertical_toolbar.disable_item_expand (toc_open_button)
			toc_vertical_toolbar.disable_item_expand (toc_save_button)
			toc_vertical_toolbar.disable_item_expand (l_ev_cell_4)
			toc_vertical_toolbar.disable_item_expand (toc_new_heading)
			toc_vertical_toolbar.disable_item_expand (toc_new_page)
			toc_vertical_toolbar.disable_item_expand (toc_remove_topic)
			toc_vertical_toolbar.disable_item_expand (l_ev_cell_5)
			toc_vertical_toolbar.disable_item_expand (toc_list_button)
			toc_vertical_toolbar.disable_item_expand (toc_merge_button)
			toc_vertical_toolbar.disable_item_expand (toc_sort_button)
			toc_new_button.set_tooltip ("New Table of Contents")
			toc_new_button.set_pixmap (icon_new_doc_ico)
			toc_open_button.set_tooltip ("Open Table of Contents")
			toc_open_button.set_pixmap (icon_open_file_ico)
			toc_save_button.set_tooltip ("Save")
			toc_save_button.set_minimum_width (24)
			toc_save_button.set_minimum_height (24)
			toc_save_button.set_pixmap (icon_save_ico)
			l_ev_cell_4.set_minimum_height (20)
			toc_new_heading.set_tooltip ("New Topic Heading")
			toc_new_heading.set_pixmap (icon_toc_folder_open_ico)
			toc_new_page.set_tooltip ("New Topic File")
			toc_new_page.set_pixmap (icon_format_text_color_ico)
			toc_remove_topic.set_tooltip ("Delete Topic")
			toc_remove_topic.set_pixmap (icon_file_close_ico)
			l_ev_cell_5.set_minimum_height (20)
			toc_list_button.set_tooltip ("Loaded Table of Contents")
			toc_list_button.set_pixmap (icon_down_triangle_ico)
			toc_merge_button.set_tooltip ("Merge Tables of Contents")
			toc_merge_button.set_pixmap (icon_merge_ico)
			toc_sort_button.disable_sensitive
			toc_sort_button.set_tooltip ("Sort/Filter Table of Contents")
			toc_sort_button.set_pixmap (icon_sorter_ico)
			toc_status_bar.set_minimum_height (25)
			toc_status_bar.set_padding_width (2)
			toc_status_bar.set_border_width (2)
			l_ev_frame_2.set_style (1)
			toc_status_report_label.set_minimum_width (250)
			toc_status_report_label.set_minimum_height (13)
			toc_status_report_label.align_text_left
			node_properties_tool.set_minimum_height (40)
			node_properties_tool.set_style (1)
			node_properties_area.set_minimum_height (0)
			node_properties_area.disable_item_expand (l_ev_frame_3)
			l_ev_frame_3.set_style (2)
			l_ev_horizontal_box_3.set_minimum_height (0)
			l_ev_horizontal_box_3.set_padding_width (padding_width)
			l_ev_horizontal_box_3.set_border_width (border_width)
			l_ev_horizontal_box_3.disable_item_expand (l_ev_tool_bar_7)
			l_ev_label_3.set_text (" Properties")
			l_ev_label_3.align_text_left
			node_properties_close.set_pixmap (icon_close_color_ico)
			node_properties_list.set_minimum_height (0)
			element_area.set_minimum_height (20)
			element_area.set_padding_width (padding_width)
			element_area.set_border_width (border_width)
			element_split_area.set_minimum_height (0)
			element_selector.set_minimum_height (200)
			attribute_list_tool.set_minimum_height (0)
			attribute_list_tool.set_style (1)
			l_ev_vertical_box_4.set_minimum_height (0)
			l_ev_vertical_box_4.disable_item_expand (l_ev_frame_4)
			l_ev_frame_4.set_minimum_height (0)
			l_ev_frame_4.set_style (2)
			l_ev_horizontal_box_4.set_minimum_height (0)
			l_ev_horizontal_box_4.disable_item_expand (l_ev_tool_bar_8)
			l_ev_label_4.set_text (" Attributes")
			l_ev_label_4.align_text_left
			attribute_list.set_minimum_height (0)
			type_area.set_padding_width (padding_width)
			type_area.set_border_width (border_width)
			sub_element_tool.set_style (1)
			l_ev_vertical_box_5.disable_item_expand (l_ev_frame_5)
			l_ev_frame_5.set_style (2)
			l_ev_horizontal_box_5.set_padding_width (padding_width)
			l_ev_horizontal_box_5.set_border_width (border_width)
			l_ev_horizontal_box_5.disable_item_expand (l_ev_tool_bar_9)
			title_label.set_text (" Sub Elements")
			title_label.align_text_left
			sub_element_close.set_pixmap (icon_close_color_ico)
			editor_tool.set_style (1)
			l_ev_vertical_box_6.disable_item_expand (l_ev_frame_6)
			l_ev_frame_6.set_style (2)
			l_ev_horizontal_box_6.disable_item_expand (l_ev_tool_bar_10)
			l_ev_label_5.set_text (" Editor")
			l_ev_label_5.align_text_left
			editor_close.disable_sensitive
			editor_close.set_pixmap (icon_close_color_ico)
			document_area.disable_item_expand (document_status_bar)
			document_editor.set_minimum_height (200)
			document_status_bar.set_minimum_height (25)
			document_status_bar.set_padding_width (2)
			document_status_bar.set_border_width (2)
			document_status_bar.disable_item_expand (l_ev_frame_8)
			l_ev_frame_7.set_style (1)
			report_label.set_minimum_width (250)
			report_label.set_minimum_height (13)
			report_label.align_text_left
			l_ev_frame_8.set_style (1)
			line_pos_label.set_minimum_width (70)
			line_pos_label.set_minimum_height (13)
			
				--Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	l_ev_menu_bar_1: EV_MENU_BAR
	file_menu, document_menu, view_menu, project_menu, tool_menu, help_menu: EV_MENU
	new_menu_item, open_menu_item, open_project_menu_item, close_file_menu_item, save_menu_item, 
	exit_menu_item, cut_menu_item, copy_menu_item, paste_menu_item, font_menu_item, 
	parser_menu_item, search_menu_item, settings_menu_item, validator_menu_item, gen_menu_item, 
	expression_menu_item, character_menu_item, shortcuts_menu_item, help_menu_item: EV_MENU_ITEM
	l_ev_menu_separator_1, l_ev_menu_separator_2, l_ev_menu_separator_3, l_ev_menu_separator_4, 
	l_ev_menu_separator_5, l_ev_menu_separator_6: EV_MENU_SEPARATOR
	wrap_menu_item, element_selector_menu, types_selector_menu, doc_selector_menu, 
	attribute_selector_menu, sub_element_menu: EV_CHECK_MENU_ITEM
	l_ev_vertical_box_1, l_ev_vertical_box_2, documentation_area, toc_container, l_ev_vertical_box_3, 
	toc_vertical_toolbar, node_properties_area, element_area, l_ev_vertical_box_4, 
	type_area, l_ev_vertical_box_5, l_ev_vertical_box_6, document_area: EV_VERTICAL_BOX
	l_ev_frame_1, left_tool, main_tool, l_ev_frame_2, node_properties_tool, l_ev_frame_3, 
	attribute_list_tool, l_ev_frame_4, sub_element_tool, l_ev_frame_5, editor_tool, 
	l_ev_frame_6, l_ev_frame_7, l_ev_frame_8: EV_FRAME
	l_ev_horizontal_box_1, l_ev_horizontal_box_2, toc_area, toc_status_bar, l_ev_horizontal_box_3, 
	l_ev_horizontal_box_4, l_ev_horizontal_box_5, l_ev_horizontal_box_6, l_ev_horizontal_box_7, 
	document_status_bar: EV_HORIZONTAL_BOX
	main_toolbar, l_ev_tool_bar_5, l_ev_tool_bar_6, l_ev_tool_bar_7, l_ev_tool_bar_8, 
	l_ev_tool_bar_9, l_ev_tool_bar_10: EV_TOOL_BAR
	toolbar_new, toolbar_open, toolbar_save, toolbar_cut, toolbar_copy, toolbar_paste, 
	toolbar_xml_format, toolbar_code_format, toolbar_validate, toolbar_properties, 
	toolbar_link_check, main_close, node_properties_close, attribute_list_close, sub_element_close, 
	editor_close: EV_TOOL_BAR_BUTTON
	l_ev_tool_bar_separator_1, l_ev_tool_bar_separator_2, l_ev_tool_bar_separator_3, 
	l_ev_tool_bar_separator_4: EV_TOOL_BAR_SEPARATOR
	l_ev_label_1, l_ev_label_2, toc_status_report_label, l_ev_label_3, l_ev_label_4, 
	title_label, l_ev_label_5, report_label, line_pos_label: EV_LABEL
	output_combo: EV_COMBO_BOX
	toolbar_highlight_toggle: EV_TOOL_BAR_TOGGLE_BUTTON
	l_ev_cell_1, l_ev_cell_2, l_ev_cell_3, l_ev_cell_4, l_ev_cell_5, l_ev_cell_6, 
	l_ev_cell_7, l_ev_cell_8, l_ev_cell_9, l_ev_cell_10, l_ev_cell_11, l_ev_cell_12, 
	l_ev_cell_13, l_ev_cell_14: EV_CELL
	l_ev_vertical_split_area_1, l_ev_vertical_split_area_2, l_ev_vertical_split_area_3, 
	element_split_area: EV_VERTICAL_SPLIT_AREA
	l_ev_horizontal_split_area_1: EV_HORIZONTAL_SPLIT_AREA
	selector, document_editor: EV_NOTEBOOK
	document_selector, document_toc, element_selector, type_selector: EV_TREE
	toc_new_button, toc_open_button, toc_save_button, toc_new_heading, toc_new_page, 
	toc_remove_topic, toc_list_button, toc_merge_button, toc_sort_button: EV_BUTTON
	node_properties_list, attribute_list: EV_MULTI_COLUMN_LIST
	sub_elements_list: EV_LIST

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN is
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization is
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end
	
end -- class DOC_BUILDER_WINDOW_IMP
