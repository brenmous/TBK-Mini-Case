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
    width, length, height, cut_ratio
) {
    outer_width = width + 2;
    outer_length = length + 2;
    difference() {
        difference() { 
            translate([0, 0, -height]) {
                minkowski() {
                    cube([outer_width - 2, outer_length - 2, height-0.1]);
                    cylinder($fn=24, r=1, h=0.1);
                }
            }
            translate([0, 0, -height-1]) {
                color("black") {cube([width, length, height]);}
            }
        }
        translate([outer_width / 2 - outer_width * cut_ratio / 2 - 1, -1, -height]) {
            color("green") {cube([outer_width * cut_ratio, 1, height-1]);}
        }
    }
}
