indexing
	description: "Implemented `IViewObjectEx' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IVIEW_OBJECT_EX_IMPL_STUB

inherit
	IVIEW_OBJECT_EX_INTERFACE

	ECOM_STUB

feature -- Basic Operations

	remote_draw (dw_draw_aspect: INTEGER; lindex: INTEGER; pv_aspect: INTEGER; ptd: TAG_DVTARGETDEVICE_RECORD; hdc_target_dev: INTEGER; hdc_draw: INTEGER; lprc_bounds: X_RECTL_RECORD; lprc_wbounds: X_RECTL_RECORD; p_continue: ICONTINUE_INTERFACE) is
			-- No description available.
			-- `dw_draw_aspect' [in].  
			-- `lindex' [in].  
			-- `pv_aspect' [in].  
			-- `ptd' [in].  
			-- `hdc_target_dev' [in].  
			-- `hdc_draw' [in].  
			-- `lprc_bounds' [in].  
			-- `lprc_wbounds' [in].  
			-- `p_continue' [in].  
		do
			-- Put Implementation here.
		end

	remote_get_color_set (dw_draw_aspect: INTEGER; lindex: INTEGER; pv_aspect: INTEGER; ptd: TAG_DVTARGETDEVICE_RECORD; hic_target_dev: INTEGER; pp_color_set: CELL [TAG_LOGPALETTE_RECORD]) is
			-- No description available.
			-- `dw_draw_aspect' [in].  
			-- `lindex' [in].  
			-- `pv_aspect' [in].  
			-- `ptd' [in].  
			-- `hic_target_dev' [in].  
			-- `pp_color_set' [out].  
		do
			-- Put Implementation here.
		end

	remote_freeze (dw_draw_aspect: INTEGER; lindex: INTEGER; pv_aspect: INTEGER; pdw_freeze: INTEGER_REF) is
			-- No description available.
			-- `dw_draw_aspect' [in].  
			-- `lindex' [in].  
			-- `pv_aspect' [in].  
			-- `pdw_freeze' [out].  
		do
			-- Put Implementation here.
		end

	unfreeze (dw_freeze: INTEGER) is
			-- No description available.
			-- `dw_freeze' [in].  
		do
			-- Put Implementation here.
		end

	set_advise (aspects: INTEGER; advf: INTEGER; p_adv_sink: IADVISE_SINK_INTERFACE) is
			-- No description available.
			-- `aspects' [in].  
			-- `advf' [in].  
			-- `p_adv_sink' [in].  
		do
			-- Put Implementation here.
		end

	remote_get_advise (p_aspects: INTEGER_REF; p_advf: INTEGER_REF; pp_adv_sink: CELL [IADVISE_SINK_INTERFACE]) is
			-- No description available.
			-- `p_aspects' [out].  
			-- `p_advf' [out].  
			-- `pp_adv_sink' [out].  
		do
			-- Put Implementation here.
		end

	get_extent (dw_draw_aspect: INTEGER; lindex: INTEGER; ptd: TAG_DVTARGETDEVICE_RECORD; lpsizel: TAG_SIZEL_RECORD) is
			-- No description available.
			-- `dw_draw_aspect' [in].  
			-- `lindex' [in].  
			-- `ptd' [in].  
			-- `lpsizel' [out].  
		do
			-- Put Implementation here.
		end

	get_rect (dw_aspect: INTEGER; p_rect: X_RECTL_RECORD) is
			-- No description available.
			-- `dw_aspect' [in].  
			-- `p_rect' [out].  
		do
			-- Put Implementation here.
		end

	get_view_status (pdw_status: INTEGER_REF) is
			-- No description available.
			-- `pdw_status' [out].  
		do
			-- Put Implementation here.
		end

	query_hit_point (dw_aspect: INTEGER; p_rect_bounds: TAG_RECT_RECORD; ptl_loc: TAG_POINT_RECORD; l_close_hint: INTEGER; p_hit_result: INTEGER_REF) is
			-- No description available.
			-- `dw_aspect' [in].  
			-- `p_rect_bounds' [in].  
			-- `ptl_loc' [in].  
			-- `l_close_hint' [in].  
			-- `p_hit_result' [out].  
		do
			-- Put Implementation here.
		end

	query_hit_rect (dw_aspect: INTEGER; p_rect_bounds: TAG_RECT_RECORD; p_rect_loc: TAG_RECT_RECORD; l_close_hint: INTEGER; p_hit_result: INTEGER_REF) is
			-- No description available.
			-- `dw_aspect' [in].  
			-- `p_rect_bounds' [in].  
			-- `p_rect_loc' [in].  
			-- `l_close_hint' [in].  
			-- `p_hit_result' [out].  
		do
			-- Put Implementation here.
		end

	get_natural_extent (dw_aspect: INTEGER; lindex: INTEGER; ptd: TAG_DVTARGETDEVICE_RECORD; hic_target_dev: POINTER; p_extent_info: TAG_EXTENT_INFO_RECORD; psizel: TAG_SIZEL_RECORD) is
			-- No description available.
			-- `dw_aspect' [in].  
			-- `lindex' [in].  
			-- `ptd' [in].  
			-- `hic_target_dev' [in].  
			-- `p_extent_info' [in].  
			-- `psizel' [out].  
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IVIEW_OBJECT_EX_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_control_library::IViewObjectEx_impl_stub %"ecom_control_library_IViewObjectEx_impl_stub_s.h%"](EIF_OBJECT)"
		end

end -- IVIEW_OBJECT_EX_IMPL_STUB

