module outer(){
    ro=3.5;
hull(){
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);

translate([0,23])
rotate([0,0,5])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);
}
hull(){
translate([0,23])
rotate([0,0,5])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);

translate([-1,33.1,0])
rotate([0,0,10])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);
}
hull(){
translate([-1,33.1,0])
rotate([0,0,10])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);

translate([-12.5,95.5,0])
rotate([0,0,16])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);
}
hull(){
translate([-12.5,95.5,0])
rotate([0,0,16])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);


translate([-17.5,111.5,0])
rotate([0,0,18])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);
}

hull(){
translate([-17.5,111.5,0])
rotate([0,0,18])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);



translate([-31,157,0])
rotate([0,0,20])
rotate([90,0,0])
cylinder(r=ro,h=1,$fn=6);
}

translate([-59.8,146.6,0])
for(i=[20:10:145]){hull(){

  rotate([0,0,i])
    translate([30.57,0,0])
    rotate([90,0,0])
    cylinder(r=ro,h=1,$fn=6);
    
      rotate([0,0,i+10])
    translate([30.57,0,0])
    rotate([90,0,0])
    cylinder(r=ro,h=1,$fn=6);
}
}

}

module inner(){
    ri=2;
hull(){
    translate([0,-1])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);

translate([0,23])
rotate([0,0,5])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);
}
hull(){
translate([0,23])
rotate([0,0,5])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);

translate([-1,33.1,0])
rotate([0,0,10])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);
}
hull(){
translate([-1,33.1,0])
rotate([0,0,10])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);

translate([-12.5,95.5,0])
rotate([0,0,16])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);
}
hull(){
translate([-12.5,95.5,0])
rotate([0,0,16])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);


translate([-17.5,111.5,0])
rotate([0,0,18])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);
}

hull(){
translate([-17.5,111.5,0])
rotate([0,0,18])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);



translate([-31,157,0])
rotate([0,0,20])
rotate([90,0,0])
cylinder(r=ri,h=1,$fn=30);
}

translate([-59.8,146.6,0])
for(i=[20:10:150]){hull(){

  rotate([0,0,i])
    translate([30.57,0,0])
    rotate([90,0,0])
    cylinder(r=ri,h=1,$fn=30);
    
      rotate([0,0,i+10])
    translate([30.57,0,0])
    rotate([90,0,0])
    cylinder(r=ri,h=1,$fn=30);
}


}




}
difference(){
outer();
inner();
}

translate([0,-1,-3.03])cube([17,3,1.041]);
translate([-17,-1,-3.03])cube([17,3,1.041]);
translate([12,-1,-3.03])cube([5,10,1.041]);
translate([-17,-1,-3.03])cube([5,10,1.041]);