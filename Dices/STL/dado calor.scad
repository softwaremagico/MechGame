include <./components/heat.scad>;

cube_size=10;

module fire(rotation, translation) {
    color("black"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            heat();
        }
    }
}

//========================
// DICE
//========================

//difference(){
//    color("red")
//    intersection(){
//        cube(cube_size,center=true);
//        sphere(cube_size*0.71,$fn=150);}
//}


//========================
// Face 1
//========================
fire([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,0]);

//========================
// Face 2
//========================

fire([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,0]);

//========================
// Face 3
//========================

fire([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,0]);

//========================
// Face 4
//========================

// EMPTY

//========================
// Face 5
//========================

// EMPTY

//========================
// Face 6
//========================

// EMPTY