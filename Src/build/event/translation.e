
class TRANSLATION 

inherit

	EVENT
		redefine
			label, original_stone
		end;
	EV_PIXMAPS;
	EVENT_LABELS;
	REMOVABLE;
	WINDOWS

creation

	make

feature 

	original_stone: TRANSLATION is
		do
			Result := Current
		end;

	identifier: INTEGER;

	
feature {NONE}

	remove_yourself is
		local
			cut_current: TRANSL_CUT
		do
			!!cut_current;
			cut_current.execute (Current)
		end;

	integer_generator: INT_GENERATOR is
			-- Integer generator for each type of context
		once
			!!Result;
			Result.set (100);
		end;
 
	namer: NAMER is
		once
			!!Result.make ("Translation");
		end;

feature 

	editor: TRANSL_EDITOR;
			-- Translation editor

	edited: BOOLEAN is
			-- Is current translation being edited?
		do
			Result := (editor /= Void)
		end;

	set_editor (ed: TRANSL_EDITOR) is
			-- Set editor to `ed'.
		do
			editor := ed
		end;

	reset is
			-- "Forget" editor.
		do
			editor := Void
		end;

	text: STRING;

	set_text (s: STRING) is
		do
			text := clone (s);	
			context_catalog.update_translation_page;
		end;

	label: STRING is
		do
			Result := text
		end;

	make is
		do
			set_symbol (Translation_pixmap);
			identifier := integer_generator.value;
			integer_generator.next;
			text := "<Key>";
		ensure
			translation_is_x: text.is_equal ("<Key>")
		end;

	set_internal_name (s: STRING) is
		do
			internal_name := clone(s);
		end;

	generate_internal_name is
		do
			namer.next;
			internal_name := namer.value;
		end;

	eiffel_text: STRING is
		do
			!!Result.make (0);
			Result.append ("set_action (%"");
			Result.append (text);
			Result.append ("%", ");
		end;

end
