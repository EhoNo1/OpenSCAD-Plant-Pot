// Created by Aetous
// Modified 4/7/2021



//Unit Input
//All but the thickness is is measured in inches
//The client provided measurements in IPS so it was kept here.
//If you want to input measurements in metric you can overwrite the values assigned to the simplification variables in the next section. OpenSCAD uses milimeters.
diameter_in_inches=6;
height_in_inches=4;
hole_diameter_in_inches=0.5;

thickness_in_milimeter=5;


//Unit Conversion & Simplification
t=thickness_in_milimeter;       //thickness
d=diameter_in_inches*25.4;      //diameter
r=d/2;                          //radius
h=height_in_inches*25.4;        //height
hd=hole_diameter_in_inches*25.4;//drain hole diameter



//Model Assembly
difference() {
    cylinder(h=h,r=r,$fn=360);
    union() {
        translate([0,0,t]) 
            cylinder(h=h,r=r-t,$fn=360);
        cylinder(h=t,r=hd/2,$fn=360);
    }
}