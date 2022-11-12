module button() {
    //hull() {
    //    translate([2.05, 0, 0]) {
    //        cylinder($fn=24, r=4.5, h=4.3);
    //    }
    //    translate([5.05, 0, 0]) {
    //        cylinder($fn=24, r=4.5, h=4.3);
    //    }
    //}
    difference() {
        
        union() {
            translate([7.5,4.25,0])
            cylinder($fn=24, r=4.55, h=4.2);
            translate([1.5,4.25,0])
            cylinder($fn=24, r=4.55, h=4.2);
        }
        translate([0,-8.5,0])
        color("red")
        cube([9,8.5,4.2]);
        translate([0,8.5,0])
        color("red")
        cube([9,8.5,4.2]);
    }
    cube([9,8.5,4.2]);
    translate([4.5,4.25,0])
    cylinder($fn=24, r=3.575, h=6.3);
}

module battery_restraint(width, length) {
    rotate([-90, 0, 0]) {
        translate([0, 0, 0]) {
                cylinder($fn=24, r=1, h=width);
            }
        hull() { 
            cube([1, 1, width]);
            translate([length / 2, 0, 0])
            cube([1, 1, width]);
            translate([length / 2 + 1, 0.5, 0]) {
                cylinder($fn=24, r=0.5, h=width);
            }
        }
    }
}

module battery_holder(
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

    rwidth = outer_length / 5;
    rlength = width;

    //translate([-1, (outer_length / 4 - rwidth / 2) * 4 - 8, -6])
    //battery_restraint(rwidth, rlength + 1);

    //translate([outer_width - 1, (outer_length / 4 - rwidth / 2) * 4 - 8, -6])
    //mirror([1, 0, 0])
    //battery_restraint(rwidth, rlength + 1);

    //translate([-1, outer_length / 4 - rwidth / 2, -6])
    //battery_restraint(rwidth, rlength + 1);

    //translate([outer_width - 1, outer_length / 4 - rwidth / 2, -6])
    //mirror([1, 0, 0])
    //battery_restraint(rwidth, rlength + 1);
    
}

battery_holder(25, 38, 6, 0.3);

//button();
