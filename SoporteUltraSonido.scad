//Soporte Ultrasonidos
rotate([90,0,0]) translate([0,12.5,0]){
    translate([-25,-12.5,0]){
        difference(){
            union(){
                translate([-5,0,0]) cube([60,25,5]);
                cube([50,25,17]);
            }
            union(){
                translate([2.5,3,3]) cube([45,19,18]);
                translate([1.5,3,12]) cube([47,19,8]);
                translate([1.5,2,12]) cube([47,21,3]);
                translate([1.5,2,12]) cube([15,21,8]);
                translate([33.5,2,12]) cube([15,21,8]);
                translate([20.5,-1,12]) cube([9,20,8]);        
                translate([12,12.5,-1]) cylinder(r=8,h=5,$fn=30);
                translate([38,12.5,-1]) cylinder(r=8,h=5,$fn=30);
            }
        }
    }
    translate([27,-12.5,0]) rotate([0,35,0]) cube([45,25,3]);
    translate([-27,-12.5,3]) rotate([0,145,0]) cube([45,25,3]);
    translate([30,-12.5,0]) rotate([0,-90,0]) cube([60,25,3]);
    translate([-27,-12.5,0]) rotate([0,-90,0]) cube([60,25,3]);
    translate([-30,-12.5,60]) cube([60,25,3]);
    translate([-30,-12.5,60]) cube([60,3,16]);
    translate([0,-9.5,72]) cube([10,7,4]);
}