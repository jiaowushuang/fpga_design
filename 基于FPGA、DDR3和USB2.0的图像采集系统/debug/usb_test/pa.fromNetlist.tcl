
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name USB_LOOP_TEST -dir "D:/project/Verilog_luo/USB_LOOP_TEST/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/project/Verilog_luo/USB_LOOP_TEST/USB_LOOP_TEST.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/project/Verilog_luo/USB_LOOP_TEST} }
set_param project.paUcfFile  "USB_LOOP_TEST.ucf"
add_files "USB_LOOP_TEST.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
