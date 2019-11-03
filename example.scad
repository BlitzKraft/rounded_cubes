use <round_cube.scad>

cube([10, 10, 10], $fn=20);
translate([15, 0, 0])
flat_tops([10, 10, 10], $fn=20);
translate([30, 0, 0])
round_cube([10, 10, 10], radius=1, $fn=20);


