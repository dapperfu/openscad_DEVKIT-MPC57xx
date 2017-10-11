width = 58.3;
length = 125.4;
height = 3;
corner_r = 10;

linear_extrude(height = height, center=false) {
    difference() {
    square([width, length], center=false);
    translate([corner_r, corner_r, 0]) {
    circle(radius=corner_r);
   }
   }
}