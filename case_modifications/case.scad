use <shapes.scad>

module case() {
    difference() {
        import("../files/case_v2_v88.stl");
        translate([-87, 3, -60.6]) { 
            mirror([0, 0, 1]) {
                rotate([-6.2, 0.4, 0]) {
                    color("black") { button(); }
                }
            }
        }
    }
}

module hole_filler(od, id, h) {
    difference() {
        cylinder($fn=24,h=h,r=od/2);
        cylinder($fn=24,h=h,r=id/2);
    }
}
module measuring_stick() {
    color("red")
    cube([5.5, 1, 1]);
}

// Convert holes to m3 inserts
// thumb side below
translate([-94,-4,-17])
rotate([90,0,0])
hole_filler(od=6, id=4.6, h=4);

// thumb side above
translate([-94.6,0,-30.6])
rotate([90,0,0])
hole_filler(od=6, id=4.6, h=3.77);

// thumb side bottom
translate([-59.5,0.25,-58.9])
rotate([90,0,0])
hole_filler(od=6, id=4.6, h=4);

// thumb side top
translate([-51.6,-4,14])
rotate([90,0,0])
hole_filler(od=6, id=4.6, h=4);

// pinky side top
translate([-15,-4,9])
rotate([90,0,0])
hole_filler(od=6, id=4.6, h=4);

// pinky side top corner
translate([23,-4,15])
rotate([90,0,0])
hole_filler(od=6, id=4.6, h=4);

// pinky side bottom
translate([-9,-4, -52])
rotate([90,0,0])
hole_filler(od=6, id=4.6, h=4);

//translate([-97,-10,-17.5])
//measuring_stick();

case();
//intersection() {
//    translate([-91, 1, -70])
//    cube([17,12,10]);
//    case();
//}
