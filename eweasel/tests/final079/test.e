class TEST
inherit
	TEST1

create
	make

feature
	
	make is
		do
			f
		end

	x, y: STRING
		attribute
		ensure then
			Result /= Void
		end

end
