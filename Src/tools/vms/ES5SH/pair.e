note
   description : "simple implementation of an ordered pair of items"
   author : "Mark Howard"
   keywords : "pair,ordered"

class
	PAIR[G,H]

create
	make, default_create

feature
	first : G
	second : H
	make, set (a_first : G; a_second : H)
		do
			first := a_first
			second := a_second
		end
	set_first (a_value: like first)
		do
			first := a_value
		end

	set_second (a_value: like second)
		do
			second := a_value
		end

end