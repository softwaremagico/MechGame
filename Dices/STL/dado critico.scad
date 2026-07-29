include <./components/heat.scad>;
include <./components/critical.scad>;

cube_size=10;
sword_separation=1.5;


module heats(rotation, translation) {
    color("black"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            heat();
        }
    }
}

module criticals(rotation, translation) {
    color("black"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            critical();
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
heats([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,0]);

//========================
// Face 2
//========================

criticals([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,0]);

//========================
// Face 3
//========================

heats([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,0]);

//========================
// Face 4
//========================

criticals([-90,180,180], [0, -(cube_size/2-svg_extrude_height+0.1),0]);

//========================
// Face 5
//========================

// EMPTY

//========================
// Face 6
//========================

// EMPTY