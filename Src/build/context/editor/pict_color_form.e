
class PICT_COLOR_FORM 

inherit

	COMMAND;
	EDITOR_FORM
		redefine
			context
		end

creation

	make

feature {NONE}

	pixmap_name: EB_TEXT_FIELD;

	pixmap_selection_box: PIXMAP_FILE_BOX;

	context: PICT_COLOR_C is
		do
			Result ?= editor.edited_context
		end;

	form_number: INTEGER is
		do
			Result := Context_const.pict_color_att_form_nbr
		end;

	Pict_clr_cmd: PICT_CLR_CMD is
		once
			!!Result
		end;

feature 

	make_visible (a_parent: COMPOSITE) is
		local
			label: LABEL_G;
			pixmap_open_b: PUSH_BG;
		do
			initialize (Context_const.pict_color_form_name, a_parent);
			!!label.make (Context_const.pixmap_name, Current);
			!!pixmap_name.make (Widget_names.textfield, 
					Current, Pict_clr_cmd, editor);
			!!pixmap_open_b.make (Context_const.open_pixmap_name, Current);
			attach_top (label, 10);
			attach_left (label, 10);
			attach_left (pixmap_name, 10);
			attach_top_widget (label, pixmap_name, 10);
			attach_left (pixmap_open_b, 10);
			attach_top_widget (pixmap_name, pixmap_open_b, 5);

			pixmap_open_b.add_activate_action (Current, Void);
			show_current
		end;
	
feature {NONE}

	execute (argument: ANY) is
		do
			if (pixmap_selection_box = Void) then
				!! pixmap_selection_box.make 
					(pixmap_name, Current, Pict_clr_cmd, editor);
			end;
			pixmap_selection_box.popup
		end;

	reset is
		do
			if context.pixmap_name /= Void then
				pixmap_name.set_text (context.pixmap_name);
			else
				pixmap_name.set_text ("");
			end;
		end;

	
feature 

	apply is
		do
			context.set_pixmap_name (pixmap_name.text)
		end;

end
