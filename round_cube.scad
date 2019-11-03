module round_cube(cube_dims, center=false, radius, $fn) {
	cube_dims = is_num(cube_dims)? [cube_dims, cube_dims, cube_dims] : cube_dims;
	computed_radius = min(cube_dims) * 0.05;
	radius = (radius && radius <= min(cube_dims)/2)? radius : computed_radius;
	cube_x = cube_dims[0] - 2 * radius;
	cube_y = cube_dims[1] - 2 * radius;
	cube_z = cube_dims[2] - 2 * radius;
	centering = center? 1 : 0;
	tran = cube_dims * -0.5 * centering;
	translate([radius, radius, radius] + tran) {
		hull() {
			translate([0, 0, 0])
			sphere(radius);
			translate([cube_x, 0, 0])
			sphere(radius);
			translate([cube_x, cube_y, 0])
			sphere(radius);
			translate([0, cube_y, 0])
			sphere(radius);
			translate([0, 0, cube_z])
			sphere(radius);
			translate([cube_x, 0, cube_z])
			sphere(radius);
			translate([cube_x, cube_y, cube_z])
			sphere(radius);
			translate([0, cube_y, cube_z])
			sphere(radius);
		}
	}
}

module flat_tops(cube_dims, center=false, radius, $fn) {
	cube_dims = is_num(cube_dims)? [cube_dims, cube_dims, cube_dims] : cube_dims;
	computed_radius = min(cube_dims) * 0.05;
	radius = (radius && radius <= min(cube_dims)/2)? radius : computed_radius;
	cube_x = cube_dims[0] - 2 * radius;
	cube_y = cube_dims[1] - 2 * radius;
	cube_z = cube_dims[2];
	centering = center? 1 : 0;
	tran = cube_dims * -0.5 * centering;
	translate([radius, radius, 0] + tran) {
	hull() {
			translate([0, 0, 0])
			cylinder(r=radius, h=cube_z);
			translate([cube_x, 0, 0])
			cylinder(r=radius, h=cube_z);
			translate([cube_x, cube_y, 0])
			cylinder(r=radius, h=cube_z);
			translate([0, cube_y, 0])
			cylinder(r=radius, h=cube_z);
		}
	}
}

