indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PREFERENCES_DIALOG_IMP

inherit
	EV_DIALOG
		redefine
			initialize, is_in_default_state
		end
			
	CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_DIALOG generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			Precursor {EV_DIALOG}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_vertical_box_1
			create l_ev_frame_1
			create l_ev_vertical_box_2
			create l_ev_notebook_1
			create l_ev_vertical_box_3
			create l_ev_horizontal_box_1
			create l_ev_label_1
			create l_ev_horizontal_separator_1
			create l_ev_horizontal_box_2
			create name_text
			create l_ev_vertical_box_4
			create l_ev_horizontal_box_3
			create l_ev_label_2
			create l_ev_horizontal_separator_2
			create l_ev_horizontal_box_4
			create schema_loc_text
			create browse_schema_bt
			create l_ev_vertical_box_5
			create l_ev_horizontal_box_5
			create l_ev_label_3
			create l_ev_horizontal_separator_3
			create l_ev_horizontal_box_6
			create css_loc_text
			create browse_css_bt
			create l_ev_vertical_box_6
			create l_ev_horizontal_box_7
			create l_ev_label_4
			create l_ev_horizontal_separator_4
			create l_ev_horizontal_box_8
			create header_loc_text
			create browse_header_button
			create l_ev_horizontal_box_9
			create header_override_check
			create l_ev_horizontal_box_10
			create l_ev_label_5
			create l_ev_horizontal_separator_5
			create l_ev_horizontal_box_11
			create footer_loc_text
			create browse_footer_button
			create l_ev_horizontal_box_12
			create footer_override_check
			create l_ev_vertical_box_7
			create l_ev_horizontal_box_13
			create l_ev_label_6
			create l_ev_horizontal_separator_6
			create l_ev_horizontal_box_14
			create use_include_tags
			create l_ev_vertical_box_8
			create header_include_check
			create l_ev_vertical_box_9
			create header_file_radio
			create header_generate_check
			create l_ev_vertical_box_10
			create footer_include_check
			create l_ev_vertical_box_11
			create footer_file_radio
			create footer_generate_check
			create l_ev_horizontal_box_15
			create html_stylesheet_check
			create l_ev_horizontal_box_16
			create nav_links_check
			create l_ev_horizontal_box_17
			create dhtml_toc_check
			create l_ev_horizontal_box_18
			create dhtml_filter_check
			create l_ev_vertical_box_12
			create l_ev_horizontal_box_19
			create l_ev_vertical_box_13
			create l_ev_label_7
			create filters_list
			create l_ev_horizontal_box_20
			create filter_description_text
			create add_description_button
			create l_ev_cell_1
			create l_ev_vertical_box_14
			create l_ev_label_8
			create tags_list
			create l_ev_horizontal_box_21
			create filter_tag_name_text
			create add_tag_button
			create l_ev_cell_2
			create l_ev_horizontal_box_22
			create l_ev_cell_3
			create apply_bt
			create okay_bt
			create cancel_bt
			
				-- Build_widget_structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_frame_1)
			l_ev_frame_1.extend (l_ev_vertical_box_2)
			l_ev_vertical_box_2.extend (l_ev_notebook_1)
			l_ev_notebook_1.extend (l_ev_vertical_box_3)
			l_ev_vertical_box_3.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (l_ev_label_1)
			l_ev_horizontal_box_1.extend (l_ev_horizontal_separator_1)
			l_ev_vertical_box_3.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (name_text)
			l_ev_notebook_1.extend (l_ev_vertical_box_4)
			l_ev_vertical_box_4.extend (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.extend (l_ev_label_2)
			l_ev_horizontal_box_3.extend (l_ev_horizontal_separator_2)
			l_ev_vertical_box_4.extend (l_ev_horizontal_box_4)
			l_ev_horizontal_box_4.extend (schema_loc_text)
			l_ev_horizontal_box_4.extend (browse_schema_bt)
			l_ev_notebook_1.extend (l_ev_vertical_box_5)
			l_ev_vertical_box_5.extend (l_ev_horizontal_box_5)
			l_ev_horizontal_box_5.extend (l_ev_label_3)
			l_ev_horizontal_box_5.extend (l_ev_horizontal_separator_3)
			l_ev_vertical_box_5.extend (l_ev_horizontal_box_6)
			l_ev_horizontal_box_6.extend (css_loc_text)
			l_ev_horizontal_box_6.extend (browse_css_bt)
			l_ev_notebook_1.extend (l_ev_vertical_box_6)
			l_ev_vertical_box_6.extend (l_ev_horizontal_box_7)
			l_ev_horizontal_box_7.extend (l_ev_label_4)
			l_ev_horizontal_box_7.extend (l_ev_horizontal_separator_4)
			l_ev_vertical_box_6.extend (l_ev_horizontal_box_8)
			l_ev_horizontal_box_8.extend (header_loc_text)
			l_ev_horizontal_box_8.extend (browse_header_button)
			l_ev_vertical_box_6.extend (l_ev_horizontal_box_9)
			l_ev_horizontal_box_9.extend (header_override_check)
			l_ev_vertical_box_6.extend (l_ev_horizontal_box_10)
			l_ev_horizontal_box_10.extend (l_ev_label_5)
			l_ev_horizontal_box_10.extend (l_ev_horizontal_separator_5)
			l_ev_vertical_box_6.extend (l_ev_horizontal_box_11)
			l_ev_horizontal_box_11.extend (footer_loc_text)
			l_ev_horizontal_box_11.extend (browse_footer_button)
			l_ev_vertical_box_6.extend (l_ev_horizontal_box_12)
			l_ev_horizontal_box_12.extend (footer_override_check)
			l_ev_notebook_1.extend (l_ev_vertical_box_7)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_13)
			l_ev_horizontal_box_13.extend (l_ev_label_6)
			l_ev_horizontal_box_13.extend (l_ev_horizontal_separator_6)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_14)
			l_ev_horizontal_box_14.extend (use_include_tags)
			l_ev_vertical_box_7.extend (l_ev_vertical_box_8)
			l_ev_vertical_box_8.extend (header_include_check)
			l_ev_vertical_box_8.extend (l_ev_vertical_box_9)
			l_ev_vertical_box_9.extend (header_file_radio)
			l_ev_vertical_box_9.extend (header_generate_check)
			l_ev_vertical_box_7.extend (l_ev_vertical_box_10)
			l_ev_vertical_box_10.extend (footer_include_check)
			l_ev_vertical_box_10.extend (l_ev_vertical_box_11)
			l_ev_vertical_box_11.extend (footer_file_radio)
			l_ev_vertical_box_11.extend (footer_generate_check)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_15)
			l_ev_horizontal_box_15.extend (html_stylesheet_check)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_16)
			l_ev_horizontal_box_16.extend (nav_links_check)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_17)
			l_ev_horizontal_box_17.extend (dhtml_toc_check)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_18)
			l_ev_horizontal_box_18.extend (dhtml_filter_check)
			l_ev_notebook_1.extend (l_ev_vertical_box_12)
			l_ev_vertical_box_12.extend (l_ev_horizontal_box_19)
			l_ev_horizontal_box_19.extend (l_ev_vertical_box_13)
			l_ev_vertical_box_13.extend (l_ev_label_7)
			l_ev_vertical_box_13.extend (filters_list)
			l_ev_vertical_box_13.extend (l_ev_horizontal_box_20)
			l_ev_horizontal_box_20.extend (filter_description_text)
			l_ev_horizontal_box_20.extend (add_description_button)
			l_ev_horizontal_box_19.extend (l_ev_cell_1)
			l_ev_horizontal_box_19.extend (l_ev_vertical_box_14)
			l_ev_vertical_box_14.extend (l_ev_label_8)
			l_ev_vertical_box_14.extend (tags_list)
			l_ev_vertical_box_14.extend (l_ev_horizontal_box_21)
			l_ev_horizontal_box_21.extend (filter_tag_name_text)
			l_ev_horizontal_box_21.extend (add_tag_button)
			l_ev_vertical_box_12.extend (l_ev_cell_2)
			l_ev_vertical_box_2.extend (l_ev_horizontal_box_22)
			l_ev_horizontal_box_22.extend (l_ev_cell_3)
			l_ev_horizontal_box_22.extend (apply_bt)
			l_ev_horizontal_box_22.extend (okay_bt)
			l_ev_horizontal_box_22.extend (cancel_bt)
			
			set_minimum_width (dialog_width)
			set_minimum_height (dialog_height)
			set_title ("Project Settings")
			l_ev_vertical_box_1.set_padding_width (padding_width)
			l_ev_vertical_box_1.set_border_width (border_width)
			l_ev_frame_1.set_text ("Project Settings")
			l_ev_vertical_box_2.set_padding_width (padding_width)
			l_ev_vertical_box_2.set_border_width (border_width)
			l_ev_vertical_box_2.disable_item_expand (l_ev_horizontal_box_22)
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_3, "General")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_4, "Schema")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_5, "HTML")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_6, "Includes")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_7, "Conversion")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_12, "Filters")
			l_ev_vertical_box_3.set_padding_width (padding_width)
			l_ev_vertical_box_3.set_border_width (border_width)
			l_ev_vertical_box_3.disable_item_expand (l_ev_horizontal_box_1)
			l_ev_vertical_box_3.disable_item_expand (l_ev_horizontal_box_2)
			l_ev_horizontal_box_1.set_padding_width (padding_width)
			l_ev_horizontal_box_1.set_border_width (border_width)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_label_1)
			l_ev_label_1.set_text ("Project Name")
			l_ev_horizontal_box_2.set_padding_width (padding_width)
			l_ev_horizontal_box_2.set_border_width (border_width)
			name_text.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (212, 208, 200))
			name_text.disable_sensitive
			l_ev_vertical_box_4.set_padding_width (padding_width)
			l_ev_vertical_box_4.set_border_width (border_width)
			l_ev_vertical_box_4.disable_item_expand (l_ev_horizontal_box_3)
			l_ev_vertical_box_4.disable_item_expand (l_ev_horizontal_box_4)
			l_ev_horizontal_box_3.set_padding_width (padding_width)
			l_ev_horizontal_box_3.set_border_width (border_width)
			l_ev_horizontal_box_3.disable_item_expand (l_ev_label_2)
			l_ev_label_2.set_text ("Schema File")
			l_ev_horizontal_box_4.set_padding_width (padding_width)
			l_ev_horizontal_box_4.set_border_width (border_width)
			l_ev_horizontal_box_4.disable_item_expand (browse_schema_bt)
			browse_schema_bt.set_text (button_browse_text)
			browse_schema_bt.set_minimum_width (button_width)
			l_ev_vertical_box_5.set_padding_width (padding_width)
			l_ev_vertical_box_5.set_border_width (border_width)
			l_ev_vertical_box_5.disable_item_expand (l_ev_horizontal_box_5)
			l_ev_vertical_box_5.disable_item_expand (l_ev_horizontal_box_6)
			l_ev_horizontal_box_5.set_padding_width (padding_width)
			l_ev_horizontal_box_5.set_border_width (border_width)
			l_ev_horizontal_box_5.disable_item_expand (l_ev_label_3)
			l_ev_label_3.set_text ("HTML Stylesheet File")
			l_ev_horizontal_box_6.set_padding_width (padding_width)
			l_ev_horizontal_box_6.set_border_width (border_width)
			l_ev_horizontal_box_6.disable_item_expand (browse_css_bt)
			browse_css_bt.set_text (button_browse_text)
			browse_css_bt.set_minimum_width (button_width)
			l_ev_vertical_box_6.set_padding_width (padding_width)
			l_ev_vertical_box_6.set_border_width (border_width)
			l_ev_vertical_box_6.disable_item_expand (l_ev_horizontal_box_7)
			l_ev_vertical_box_6.disable_item_expand (l_ev_horizontal_box_8)
			l_ev_vertical_box_6.disable_item_expand (l_ev_horizontal_box_9)
			l_ev_vertical_box_6.disable_item_expand (l_ev_horizontal_box_10)
			l_ev_vertical_box_6.disable_item_expand (l_ev_horizontal_box_11)
			l_ev_vertical_box_6.disable_item_expand (l_ev_horizontal_box_12)
			l_ev_horizontal_box_7.set_padding_width (5)
			l_ev_horizontal_box_7.set_border_width (2)
			l_ev_horizontal_box_7.disable_item_expand (l_ev_label_4)
			l_ev_label_4.set_text ("Header File")
			l_ev_horizontal_box_8.set_padding_width (5)
			l_ev_horizontal_box_8.set_border_width (2)
			l_ev_horizontal_box_8.disable_item_expand (browse_header_button)
			browse_header_button.set_text ("Browse...")
			browse_header_button.set_minimum_width (80)
			l_ev_horizontal_box_9.set_padding_width (5)
			l_ev_horizontal_box_9.set_border_width (inner_border_width)
			header_override_check.enable_select
			header_override_check.set_text ("Override individual document header declarations")
			l_ev_horizontal_box_10.set_padding_width (5)
			l_ev_horizontal_box_10.set_border_width (2)
			l_ev_horizontal_box_10.disable_item_expand (l_ev_label_5)
			l_ev_label_5.set_text ("Footer File")
			l_ev_horizontal_box_11.set_padding_width (5)
			l_ev_horizontal_box_11.set_border_width (2)
			l_ev_horizontal_box_11.disable_item_expand (browse_footer_button)
			browse_footer_button.set_text ("Browse...")
			browse_footer_button.set_minimum_width (80)
			l_ev_horizontal_box_12.set_padding_width (5)
			l_ev_horizontal_box_12.set_border_width (inner_border_width)
			footer_override_check.enable_select
			footer_override_check.set_text ("Override individual document footer declarations")
			l_ev_vertical_box_7.set_border_width (2)
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_13)
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_14)
			l_ev_vertical_box_7.disable_item_expand (l_ev_vertical_box_8)
			l_ev_vertical_box_7.disable_item_expand (l_ev_vertical_box_10)
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_15)
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_16)
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_17)
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_18)
			l_ev_horizontal_box_13.set_padding_width (2)
			l_ev_horizontal_box_13.set_border_width (border_width)
			l_ev_horizontal_box_13.disable_item_expand (l_ev_label_6)
			l_ev_label_6.set_text ("Document Includes")
			l_ev_horizontal_box_14.set_padding_width (5)
			l_ev_horizontal_box_14.set_border_width (inner_border_width)
			use_include_tags.enable_select
			use_include_tags.set_text ("Process include tags")
			l_ev_vertical_box_8.set_border_width (inner_border_width)
			header_include_check.enable_select
			header_include_check.set_text ("Include header")
			l_ev_vertical_box_9.set_padding_width (padding_width)
			l_ev_vertical_box_9.set_border_width (inner_border_width)
			header_file_radio.set_text ("Use defined header file")
			header_generate_check.set_text ("Generate header automatically from document filter")
			l_ev_vertical_box_10.set_border_width (inner_border_width)
			footer_include_check.enable_select
			footer_include_check.set_text ("Include footer")
			l_ev_vertical_box_11.set_padding_width (padding_width)
			l_ev_vertical_box_11.set_border_width (inner_border_width)
			footer_file_radio.set_text ("Use defined footer file")
			footer_generate_check.set_text ("Generate footer automatically from document filter")
			l_ev_horizontal_box_15.set_padding_width (2)
			l_ev_horizontal_box_15.set_border_width (inner_border_width)
			html_stylesheet_check.enable_select
			html_stylesheet_check.set_text ("Include HTML stylesheet for HTML transformations")
			l_ev_horizontal_box_16.set_padding_width (5)
			l_ev_horizontal_box_16.set_border_width (5)
			nav_links_check.enable_select
			nav_links_check.set_text ("Add navigation links (when converting TOC hierarchy)")
			l_ev_horizontal_box_17.set_padding_width (5)
			l_ev_horizontal_box_17.set_border_width (5)
			dhtml_toc_check.enable_select
			dhtml_toc_check.set_text ("Generate DHTML frame-based toc for web conversion")
			l_ev_horizontal_box_18.set_padding_width (5)
			l_ev_horizontal_box_18.set_border_width (5)
			dhtml_filter_check.enable_select
			dhtml_filter_check.set_text ("Generate DHTML combo-box filter for displaying output blocks")
			l_ev_vertical_box_12.set_padding_width (padding_width)
			l_ev_vertical_box_12.set_border_width (border_width)
			l_ev_horizontal_box_19.set_padding_width (padding_width)
			l_ev_horizontal_box_19.set_border_width (border_width)
			l_ev_horizontal_box_19.disable_item_expand (l_ev_cell_1)
			l_ev_vertical_box_13.set_padding_width (padding_width)
			l_ev_vertical_box_13.set_border_width (border_width)
			l_ev_vertical_box_13.disable_item_expand (l_ev_label_7)
			l_ev_vertical_box_13.disable_item_expand (l_ev_horizontal_box_20)
			l_ev_label_7.set_text ("Filter description")
			l_ev_label_7.align_text_left
			l_ev_horizontal_box_20.disable_item_expand (add_description_button)
			add_description_button.set_text ("Add")
			l_ev_cell_1.set_minimum_width (padding_width)
			l_ev_vertical_box_14.set_padding_width (padding_width)
			l_ev_vertical_box_14.set_border_width (border_width)
			l_ev_vertical_box_14.disable_item_expand (l_ev_label_8)
			l_ev_vertical_box_14.disable_item_expand (l_ev_horizontal_box_21)
			l_ev_label_8.set_text ("Filter tags")
			l_ev_label_8.align_text_left
			l_ev_horizontal_box_21.disable_item_expand (add_tag_button)
			add_tag_button.set_text ("Add")
			l_ev_horizontal_box_22.set_padding_width (padding_width)
			l_ev_horizontal_box_22.set_border_width (border_width)
			l_ev_horizontal_box_22.disable_item_expand (apply_bt)
			l_ev_horizontal_box_22.disable_item_expand (okay_bt)
			l_ev_horizontal_box_22.disable_item_expand (cancel_bt)
			apply_bt.set_text (button_apply_text)
			apply_bt.set_minimum_width (button_width)
			okay_bt.set_text (button_ok_text)
			okay_bt.set_minimum_width (button_width)
			cancel_bt.set_text (button_cancel_text)
			cancel_bt.set_minimum_width (button_width)
			
				--Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	l_ev_vertical_box_1, l_ev_vertical_box_2, l_ev_vertical_box_3, l_ev_vertical_box_4, 
	l_ev_vertical_box_5, l_ev_vertical_box_6, l_ev_vertical_box_7, l_ev_vertical_box_8, 
	l_ev_vertical_box_9, l_ev_vertical_box_10, l_ev_vertical_box_11, l_ev_vertical_box_12, 
	l_ev_vertical_box_13, l_ev_vertical_box_14: EV_VERTICAL_BOX
	l_ev_frame_1: EV_FRAME
	l_ev_notebook_1: EV_NOTEBOOK
	l_ev_horizontal_box_1, l_ev_horizontal_box_2, l_ev_horizontal_box_3, l_ev_horizontal_box_4, 
	l_ev_horizontal_box_5, l_ev_horizontal_box_6, l_ev_horizontal_box_7, l_ev_horizontal_box_8, 
	l_ev_horizontal_box_9, l_ev_horizontal_box_10, l_ev_horizontal_box_11, l_ev_horizontal_box_12, 
	l_ev_horizontal_box_13, l_ev_horizontal_box_14, l_ev_horizontal_box_15, l_ev_horizontal_box_16, 
	l_ev_horizontal_box_17, l_ev_horizontal_box_18, l_ev_horizontal_box_19, l_ev_horizontal_box_20, 
	l_ev_horizontal_box_21, l_ev_horizontal_box_22: EV_HORIZONTAL_BOX
	l_ev_label_1, l_ev_label_2, l_ev_label_3, l_ev_label_4, l_ev_label_5, l_ev_label_6, 
	l_ev_label_7, l_ev_label_8: EV_LABEL
	l_ev_horizontal_separator_1, l_ev_horizontal_separator_2, l_ev_horizontal_separator_3, 
	l_ev_horizontal_separator_4, l_ev_horizontal_separator_5, l_ev_horizontal_separator_6: EV_HORIZONTAL_SEPARATOR
	name_text, schema_loc_text, css_loc_text, header_loc_text, footer_loc_text, filter_description_text, 
	filter_tag_name_text: EV_TEXT_FIELD
	browse_schema_bt, browse_css_bt, browse_header_button, browse_footer_button, add_description_button, 
	add_tag_button, apply_bt, okay_bt, cancel_bt: EV_BUTTON
	header_override_check, footer_override_check, use_include_tags, header_include_check, 
	footer_include_check, html_stylesheet_check, nav_links_check, dhtml_toc_check, 
	dhtml_filter_check: EV_CHECK_BUTTON
	header_file_radio, header_generate_check, footer_file_radio, footer_generate_check: EV_RADIO_BUTTON
	filters_list, tags_list: EV_LIST
	l_ev_cell_1, l_ev_cell_2, l_ev_cell_3: EV_CELL

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
	
end -- class PREFERENCES_DIALOG_IMP
