include <./components/center.scad>;
include <./components/side.scad>;

cube_size=10;


module sides(rotation, translation) {
    color("red"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            side();
        }
    }
}

module centers(rotation, translation) {
    color("red"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            center();
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
sides([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,0]);

//========================
// Face 2
//========================

mirror([1, 0, 0])
sides([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,0]);

//========================
// Face 3
//========================

sides([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,0]);

//========================
// Face 4
//========================

mirror([1, 0, 0])
sides([-90,180,180], [0, -(cube_size/2-svg_extrude_height+0.1),0]);

//========================
// Face 5
//========================

centers([0,0,180], [0, 0*0.7 ,(cube_size/2-svg_extrude_height+0.1)]);

//========================
// Face 6
//========================

centers([0,0,0], [0, 0*0.7 ,-(cube_size/2-svg_extrude_height+1.1)]);