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
