# Cubes with rounded corners for openSCAD

## Features

* Drop-in replacement for `cube()` function
* Design/prototype with cube() for fast preview and just replace it where needed. 
* Optionally, specify a rounding radius for each cube. Default is 5% of
  smallest dimension 
* Skip rounding of top and bottom faces with `flat_tops` module
* Creates rounded cubes exactly where the
* `cube(x)` works with both `x` as a number and a vector

## Usage

* Copy the `rounded_cubes.scad` file, and add `use <path/rounded_cubes.scad>`
  before calling any of the modules.

## Example

```openscad
use <round_cube.scad>

cube([10, 10, 10], $fn=20);
translate([15, 0, 0])
flat_tops([10, 10, 10], $fn=20);
translate([30, 0, 0])
round_cube([10, 10, 10], radius=1, $fn=20);
```

This results in the following output:

![cube, flat top cube, rounded cube](cubes.png)

## Known issues

* Rendering is not fast enough, even with `$fn=20`
