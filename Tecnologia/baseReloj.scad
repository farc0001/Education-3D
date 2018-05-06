//Soporte cargadores: Teléfono, Reloj, Auriculares
//Parte1 reloj base cargador esfera
difference(){
    difference(){
        difference(){
            cylinder(h=11,r1=37/2, r2=39/2, $fn=30);
            translate([0,0,2])
                cylinder(h=10,r1=35/2, r2=37/2, $fn=30);
        }
        translate([-20,-11,2])
            cube([40, 22, 15]);
    }
    translate([0,0,-1])
        cylinder(h=4,r1=3/2,r2=7/2,$fn=20);
}
//Parte2 reloj pulsera
difference(){
    difference(){
        union(){
            difference(){
                cylinder(h=26,r=50/2,$fn=50);
                translate([0,0,-1])
                    cylinder(h=32,r=47/2,$fn=50);
            }
            translate([-20/2,-25,0])
                cube([20,3,26]);
        }    
        rotate([90,0,0])
            translate([0,13,15])
                cylinder(h=20,r=4/2,$fn=20);
    }
    rotate([90,0,-30])
    translate([0,13,-30])
        cylinder(h=15, r=4/2, $fn=20);
}
//Parte3 reloj soporte
rotate([0,0,-30]){
    translate([-5,33,0])
        difference(){
            cube([45,3,50]);
            union(){
                translate([10,-1,40])
                    cube([5,5,5]);
                translate([30,-1,40])
                    cube([5,5,5]);
            }
        }
    translate([-5,23,0]){
        translate([0,0,22])
            cube([10,10,4]);
        difference(){
            cube([10,3,26]);
            translate([5,5,15])
                rotate([90,0,0])
                    cylinder(h=10, r=4/2,$fn=20);
        }
    }
}