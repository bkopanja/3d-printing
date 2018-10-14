G21 ; metrics values
G90 ; absolute positioning
M82 ; set extruder to absolute mode
M107 ; fan off
G28 ; home all axes
G1 Z15.0 F300 ; move the platform down 15mm
G92 E0 ; zero the extruded lenght
G1 F140 E3 ; extrude 3mm of feed stock
G92 E0 ; zero the extruded lenght
M117 Printing... ; start printing message
