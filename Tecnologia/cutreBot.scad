//Cutrebot piezas
//Pensado para realizar en cartón
//Elementos necesarios para montar el Robot móvil:
// 2 x servos de rotación continua
// 1 x placa Arduino compatible
// 1 x powerBank
// 1 x Sensor ultrasonidos
// 2 x Sensor de infrarrojos (seguidor de línea)
// Cables de conexión

//Chasis
for(i=[0:1]){
    difference(){
        translate([0,100*i,0]) cube([90,90,2]);
        union(){
            translate([44,100*i+65,-1]) cube([2,20,4]);
            translate([6,-1+100*i,-1]) cube([2,4,4]);            
            translate([82,-1+100*i,-1]) cube([2,4,4]);            
            translate([6,43+100*i,-1]) cube([2,10,4]);            
            translate([82,43+100*i,-1]) cube([2,10,4]);            
        }
    }
}
//Patín
linear_extrude(2){
    translate([0,210,0]) 
        hull() {
            translate([10,0,0]) circle(10);
            translate([50,0,0]) circle(10);
        }
    }
translate([0,200,0]) cube([20,20,2]);
//Conectores
for(j=[0:1]){
    for(i=[0:1]){    
        difference(){
            translate([35*i,230+15*j,0]) cube([30,10,2]);
            union(){
                translate([4+35*i,230-1+15*j,-1]) cube([2,6,4]);
                translate([24+35*i,230-1+15*j,-1]) cube([2,6,4]);            
                translate([10+35*i,236-1+15*j,-1]) cylinder(r=2,h=4,$fn=20);
                translate([20+35*i,236-1+15*j,-1]) cylinder(r=2,h=4,$fn=20);
                }
        }
    }
}

//Ruedas    
for(i=[0:5]){
    translate([120,25+i*55,0]){
        difference(){
            cylinder(r=50/2,h=2,$fn=20);
            translate([0,0,-1]) cylinder(r=2,h=4,$fn=20);
        }
    }
}