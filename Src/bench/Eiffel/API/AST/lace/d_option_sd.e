indexing
	description: "Default option";
	date: "$Date$";
	revision: "$Revision$"

class D_OPTION_SD

inherit

	AST_LACE
		redefine
			adapt, adapt_defaults
		end;

create
	initialize
	
feature {NONE} -- Initialization

	initialize (o: like option; v: like value) is
			-- Create a new D_OPTION AST node.
		require
			o_not_void: o /= Void
		do
			option := o
			value := v
		ensure
			option_set: option = o
			value_set: value = v
		end

feature -- Properties

	option: OPTION_SD
			-- Option name

	value: OPT_VAL_SD
			-- option value

feature -- Status report

	is_optional: BOOLEAN is
			-- Is Current an instance of `O_OPTION_SD'.
		do
		end
		
	is_precompiled: BOOLEAN is
			-- Is Current an instance of `D_PRECOMPILED_SD'.
		do
		end
		
feature -- Duplication

	duplicate: like Current is
			-- Duplicate current object
		do
			create Result.initialize (option.duplicate, duplicate_ast (value))
		end

feature -- Comparison

	same_as (other: like Current): BOOLEAN is
			-- Is `other' same as Current?
		do
			Result := same_ast (option, other.option)
			 		and then same_ast (value, other.value)
		end

feature -- Saving

	save (st: GENERATION_BUFFER) is
			-- Save current in `st'.
		do
			option.save (st)
			if value /= Void then
				st.putchar (' ')
				value.save (st)
			end
		end

feature {COMPILER_EXPORTER} -- Lace compilation

	process_system_level_options is
		do
			if option.is_valid and then option.is_system_level then
				option.process_system_level_options (value)
			end
		end

	adapt is
			-- Cluster adaptation
		do
			option.adapt (value, context.current_cluster.classes, Void) 
		end

	adapt_defaults is
			-- Cluster adaptation
		do
			option.adapt_defaults (value, context.current_cluster.classes, Void) 
		end

end -- class D_OPTION_SD
