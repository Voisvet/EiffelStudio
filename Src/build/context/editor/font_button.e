class FONT_BUTTON

inherit
	FORMAT_BUTTON

creation

	make

feature 

	symbol: PIXMAP is
		once
			Result := symbol_file_content ("font_format.symb")
		end

	form_number: INTEGER is
		do
			Result := Context_const.font_form_nbr
		end;

	focus_string: STRING is "";

end
