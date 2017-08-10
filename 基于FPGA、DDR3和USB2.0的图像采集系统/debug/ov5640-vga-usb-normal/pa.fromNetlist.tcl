
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name ov5640_vga -dir "G:/fpga-design/debug/code-ov5640-vga-usb-normal/planAhead_run_2" -part xc6slx45csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "G:/fpga-design/debug/code-ov5640-vga-usb-normal/ov5640_vga_cs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {G:/fpga-design/debug/code-ov5640-vga-usb-normal} }
set_property target_constrs_file "mig_39_2.ucf" [current_fileset -constrset]
add_files [list {mig_39_2.ucf}] -fileset [get_property constrset [current_run]]
link_design
