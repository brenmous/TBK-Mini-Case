use <shapes.scad>

import("../files/plate_v2_v88.stl");

translate([-97, -7.5, -11.68]) {
    rotate([90, 0, 0]) {
        // +.5 400mah battery dimensions
        battery_shelf(25.5, 38.5, 6.5, false, false, false, true, 0.2);
    }
}
