width = 130;
length = 60;
height = 3;
corner_r = 10;

$fn = 360;

devkitHoles = [
 [12.2185,  5.7465],
 [93.4465,  6.1045],
 [ 6.3695, 53.9095],
 [99.6555, 54.0825],
];

linear_extrude(height = height, center=false) {
    square([width, length], center=false);
}


 for (a = devkitHoles) {
   translate([a[0], a[1]]) {
        linear_extrude(height = 2*height, center=false) {
            circle(r=3, center=true);
        }
   }   
 }