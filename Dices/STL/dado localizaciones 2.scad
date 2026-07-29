include <./components/leg.scad>;
include <./components/arm.scad>;
include <./components/torso.scad>;

cube_size=10;


module legs(rotation, translation) {
    color("red"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            leg();
        }
    }
}

module arms(rotation, translation) {
    color("red"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            arm();
        }
    }
}

module torsos(rotation, translation) {
    color("red"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            torso();
        }
    }
}

//========================
// DICE
//========================

//difference(){
//    color("white")
//    intersection(){
//        cube(cube_size,center=true);
//        sphere(cube_size*0.71,$fn=150);}
//}


//========================
// Face 1
//========================
arms([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,0]);

//========================
// Face 2
//========================

legs([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,0]);

//========================
// Face 3
//========================

arms([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,0]);

//========================
// Face 4
//========================

legs([-90,180,180], [0, -(cube_size/2-svg_extrude_height+0.1),0]);

//========================
// Face 5
//========================

torsos([0,0,180], [0, 0*0.7 ,(cube_size/2-svg_extrude_height+0.1)]);

//========================
// Face 6
//========================

torsos([0,0,0], [0, 0*0.7 ,-(cube_size/2-svg_extrude_height+1.1)]);