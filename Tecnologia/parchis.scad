rotate([180,0,0])
    translate([0,0,-12]){
        difference(){
            union(){
                cylinder(h=12, r=3, $fn=20);
                cylinder(h=2, r=5, $fn=20);
            }
            translate([0,0,-1])
                cylinder(h=2, r=4, $fn=20);
        }
        translate([0,0,2])
            cylinder(h=4, r1=5, r2=1, $fn=20);
    }
