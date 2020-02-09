use <round_cube.scad>

cube([10, 10, 10], $fn=20);
translate([15, 0, 0])
flat_tops([10, 10, 10], $fn=20);
translate([30, 0, 0])
round_cube([10, 10, 10], radius=1, $fn=20);
// For the twist to look pretty. 
$fa = 1;
$fs = 0.4;
translate([45 + 5, 5, 0])
linear_extrude(height=10, scale=0.8, twist=180)
round_square([10, 10], $fn=30, radius=2, center=true); 

