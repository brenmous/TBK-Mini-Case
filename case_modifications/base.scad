use <shapes.scad>

module base() {
    import("../files/plate_v2_v88.stl");
    translate([-96, -9, -5.8]) {
        rotate([90, 14.3, 0]) {
            // +.5 400mah battery dimensions
            battery_shelf(25, 38, 6, 0.3);
        }
    }
}

base();
