//-- Mode esfera de chocolate
//-- Son semiesferas paredes de grosor uniforme pero hueca
Diametro = 120;
grosor = 3;
altura = 10;
$fn=100;
difference(){
    union(){
 //       difference(){
            translate([-Diametro/4,-Diametro/4,0])
                cube(size=[Diametro/2,Diametro/2,altura], center=false);
        difference(){
            translate([0,0,(grosor/2)+(Diametro/2)])
                sphere(r=Diametro/2);
            translate([-grosor-Diametro/2,-grosor-Diametro/2,Diametro/2])
                cube(size=[2*grosor+Diametro,2*grosor+Diametro,(Diametro/2)+grosor], center=false);    
        }
    }
translate([0,0,grosor+Diametro/2])
    sphere(r=(Diametro/2)-(grosor));
}
