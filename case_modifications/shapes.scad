module button() {
    hull() {
        translate([-2.05, 0, 0]) {
            cylinder($fn=24, r=4.5, h=4.3);
        }
        translate([2.05, 0, 0]) {
            cylinder($fn=24, r=4.5, h=4.3);
        }
    }
    translate([0, 0, 0]) {
        cylinder($fn=24, r=3.45, h=6.3);
    }
}

module battery_shelf(
    width, length, height,
    cut_left, cut_bottom, cut_right, cut_top,
    cut_ratio
) {
    outer_width = width + 2;
    outer_length = length + 2;
    difference() {
        difference() { 
            translate([1, 1, -6]) {
                minkowski() {
                    cube([outer_width-2, outer_length-2, height-0.1]);
                    cylinder($fn=24, r=1, h=0.1);
                }
            }
            translate([1, 1, -7]) {
                color("black") {cube([width, length, height]);}
            }
        }
        if (cut_top) {
            echo("hello");
            translate([outer_width / 2 - outer_width * cut_ratio / 2, 0, -6]) {
                color("green") {cube([outer_width * cut_ratio, 1, height-1]);}
            }
        }
        if (cut_bottom) {
            translate([outer_width / 2 - outer_width * cut_ratio / 2, outer_length-1, -6]) {
                color("green") {cube([outer_width * cut_ratio, 1, height-1]);}
            }
        }
        if (cut_left) {
            translate([0, outer_length / 2 - outer_length * cut_ratio / 2, -6]) {
                color("green") {cube([1, outer_length * cut_ratio, height-1]);}
            }
        }
        if (cut_right) {
            translate([outer_width-1, outer_length / 2 - outer_length * cut_ratio / 3, -6]) {
                color("green") {cube([2, outer_length * cut_ratio, height-1]);}
            }
        }
    }
}
