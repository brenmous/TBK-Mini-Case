use <shapes.scad>

difference() {
    import("../files/case_v2_v88.stl");
    translate([-82.5, 7.5, -60.03]) { 
        mirror([0, 0, 1]) {
            rotate([-6.2, 0.4, 0]) {
                color("black") { button(); }
            }
        }
    }
}
