//Peana cerámica Alarcos
//Diámetro interno=6cm
//Diámetro externo máximo=12cm
//Cilindro(D=6,H=5) vaciado por esfera(D=9)
difference(){
    cylinder(r=30,h=15,$fn=30);
    translate([0,0,38])
        sphere(r=40,$fn=30);
}