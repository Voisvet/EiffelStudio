indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	WIZARD_COM_PROJECT_BOX_IMP

inherit
	EV_VERTICAL_BOX
		redefine
			initialize, is_in_default_state
		end
			
	WIZARD_CONSTANTS
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
			Precursor {EV_VERTICAL_BOX}
			initialize_constants
			
				-- Create all widgets.
			create definition_box
			create com_project_label
			create definition_file_box
			create marshaller_box
			create marshaller_label
			create marshaller_hbox
			create l_ev_cell_1
			create marshaller_check_button
			
				-- Build_widget_structure.
			extend (definition_box)
			definition_box.extend (com_project_label)
			definition_box.extend (definition_file_box)
			extend (marshaller_box)
			marshaller_box.extend (marshaller_label)
			marshaller_box.extend (marshaller_hbox)
			marshaller_hbox.extend (l_ev_cell_1)
			marshaller_hbox.extend (marshaller_check_button)
			
			definition_box.set_padding_width (5)
			definition_box.disable_item_expand (com_project_label)
			definition_box.disable_item_expand (definition_file_box)
			com_project_label.set_text ("A definition file is either a Interface Definition file (*.idl) or a type library file (*.tlb).%NA type library can be linked into a component (*.ocx, *.dll, *.exe, ...) ")
			com_project_label.align_text_left
			marshaller_box.set_padding_width (5)
			marshaller_box.disable_item_expand (marshaller_label)
			marshaller_box.disable_item_expand (marshaller_hbox)
			marshaller_label.set_text ("A marshaller DLL can be generated from an IDL file.%NIf generated, the marshaller DLL will automatically be registered by the Wizard.")
			marshaller_label.align_text_left
			marshaller_hbox.disable_item_expand (l_ev_cell_1)
			l_ev_cell_1.set_minimum_width (30)
			marshaller_check_button.set_text ("Generate and use marshaller DLL")
			set_minimum_width (390)
			set_padding_width (7)
			
				--Connect events.
			marshaller_check_button.select_actions.extend (agent on_use_marshaller)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	marshaller_check_button: EV_CHECK_BUTTON
	definition_file_box: WIZARD_FILE_PATH_BOX
	definition_box, marshaller_box: EV_VERTICAL_BOX
	marshaller_hbox: EV_HORIZONTAL_BOX
	com_project_label,
	marshaller_label: EV_LABEL

feature {NONE} -- Implementation

	l_ev_cell_1: EV_CELL

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
	
	on_use_marshaller is
			-- Called by `select_actions' of `marshaller_check_button'.
		deferred
		end
	

end -- class WIZARD_COM_PROJECT_BOX_IMP
