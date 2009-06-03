note

	description: "[
		Basic mathematical operations, double-precision.
		This class may be used as ancestor by classes needing its facilities.
		]"
	legal: "See notice at end of class."

	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	DOUBLE_MATH

inherit
	MATH_CONST

feature -- Access

	log_2 (v: DOUBLE): DOUBLE
			-- Base 2 logarithm of `v'
		local
			a: DOUBLE
		do
			a := 2.0
			Result := log (v) / log (a)
		end

	cosine (v: DOUBLE): DOUBLE
			-- Trigonometric cosine of radian `v' approximated
			-- in the range [-pi/4, +pi/4]
		external
			"C signature (double): double use <math.h>"
		alias
			"cos"
		end

	arc_cosine (v: DOUBLE): DOUBLE
			-- Trigonometric arccosine of radian `v'
			-- in the range [0, pi]
		external
			"C signature (double): double use <math.h>"
		alias
			"acos"
		end

	sine (v: DOUBLE): DOUBLE
			-- Trigonometric sine of radian `v' approximated
			-- in range [-pi/4, +pi/4]
		external
			"C signature (double): double use <math.h>"
		alias
			"sin"
		end

	arc_sine (v: DOUBLE): DOUBLE
			-- Trigonometric arcsine of radian `v'
			-- in the range [-pi/2, +pi/2]
		external
			"C signature (double): double use <math.h>"
		alias
			"asin"
		end

	tangent (v: DOUBLE): DOUBLE
			-- Trigonometric tangent of radian `v' approximated
			-- in range [-pi/4, +pi/4]
		external
			"C signature (double): double use <math.h>"
		alias
			"tan"
		end

	arc_tangent (v: DOUBLE): DOUBLE
			-- Trigonometric arctangent of radian `v'
			-- in the range [-pi/2, +pi/2]
		external
			"C signature (double): double use <math.h>"
		alias
			"atan"
		end

	sqrt (v: DOUBLE): DOUBLE
			-- Square root of `v'
		external
			"C signature (double): double use <math.h>"
		end

	exp (x: DOUBLE): DOUBLE
			-- Exponential of `v'.
		external
			"C signature (double): double use <math.h>"
		end

	log (v: DOUBLE): DOUBLE
			-- Natural logarithm of `v'
		external
			"C signature (double): double use <math.h>"
		end

	log10 (v: DOUBLE): DOUBLE
			-- Base 10 logarithm of `v'
		external
			"C signature (double): double use <math.h>"
		end

	floor (v: DOUBLE): DOUBLE
			-- Greatest integral less than or equal to `v'
		external
			"C signature (double): double use <math.h>"
		end

	ceiling (v: DOUBLE): DOUBLE
			-- Least integral greater than or equal to `v'
		external
			"C signature (double): double use <math.h>"
		alias
			"ceil"
		end

	dabs (v: DOUBLE): DOUBLE
			-- Absolute of `v'
		external
			"C signature (double): double use <math.h>"
		alias
			"fabs"
		end

note
	library:	"EiffelBase: Library of reusable components for Eiffel."
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"







end -- class DOUBLE_MATH



