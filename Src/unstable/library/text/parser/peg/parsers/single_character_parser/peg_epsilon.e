note
	description: "Summary description for {PEG_EPSILON}."
	legal: "[
		Succeeds on any input and doesn't consume anything.
	]"
	status: "Pre-release"
	date: "$Date$"
	revision: "$Revision$"

class
	PEG_EPSILON

inherit
	PEG_ABSTRACT_PEG

create
	make

feature -- Initialization

	make
		do
		end

feature -- Implementation

	internal_parse (a_string: PEG_PARSER_STRING): PEG_PARSER_RESULT
			-- <Precursor>
		do
			create Result.make (a_string.twin, True)
			Result := build_result (Result)
		end

	default_parse_info: READABLE_STRING_8
			-- <Precursor>	
		do
			Result := "epsilon"
		end

	short_debug_info: READABLE_STRING_8
			-- <Precursor>		
		do
			Result := default_parse_info
		end

	internal_serialize (a_already_visited: LIST [PEG_ABSTRACT_PEG]): READABLE_STRING_8
			-- <Precursor>
		do
			Result := "e"
		end

end
