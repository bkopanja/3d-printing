; Start GCode
M140 S[bed0_temperature] ; set bed temperature and don't wait
M104 S140 ; set extruder temperature to 140 (no filamen ooze on that temperature) and don't wait
G28 ; home everything
M190 S[bed0_temperature] ; wait for bed temperature to reach the expected point
G29 ; auto bed level
; M420 S1 ; retrieve bed mesh
M109 S[extruder0_temperature] ; Set extruder temp and wait to be reached
G28 X0 Y0
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G1 X0.1 Y20 Z0.3 F5000.0 ; move to start-line position
G1 X0.1 Y100.0 Z0.3 F1500.0 E15 ; draw 1st line
G1 X0.4 Y100.0 Z0.3 F5000.0 ; move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; draw 2nd line
G92 E0 ; reset extruder
; done purging extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G21 ; metric values
G90 ; absolute positioning
M82 ; set extruder to absolute mode
M107 ; start with the fan off
;Put printing message on LCD screen
M117 Printing...
