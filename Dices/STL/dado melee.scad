include <./components/melee.scad>;

cube_size=10;
sword_separation=1.5;


module melees(rotation, translation) {
    color("white"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            sword();
        }
    }
}

//========================
// DICE
//========================

//difference(){
//    color("black")
//    intersection(){
//        cube(cube_size,center=true);
//        sphere(cube_size*0.71,$fn=150);}
//}


//========================
// Face 1
//========================
melees([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,0]);
melees([90,180,90], [cube_size/2-svg_extrude_height+0.1,0,sword_separation]);
melees([90,180,90], [cube_size/2-svg_extrude_height+0.1,0,-sword_separation]);

//========================
// Face 2
//========================

melees([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,0]);
melees([-90,0,0], [0,cube_size/2-svg_extrude_height+0.1,sword_separation]);
melees([-90,0,0], [0,cube_size/2-svg_extrude_height+0.1,-sword_separation]);

//========================
// Face 3
//========================

melees([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,sword_separation/2]);
melees([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,-sword_separation/2]);

//========================
// Face 4
//========================

melees([-90,180,180], [0, -(cube_size/2-svg_extrude_height+0.1),sword_separation/2]);
melees([-90,180,180], [0, -(cube_size/2-svg_extrude_height+0.1),-sword_separation/2]);

//========================
// Face 5
//========================

melees([0,0,0], [0, sword_separation*3/2, (cube_size/2-svg_extrude_height+0.1)]);
melees([0,0,180], [0, sword_separation/2, (cube_size/2-svg_extrude_height+0.1)]);
melees([0,0,0], [0, -sword_separation/2, (cube_size/2-svg_extrude_height+0.1)]);
melees([0,0,180], [0, -sword_separation*3/2, (cube_size/2-svg_extrude_height+0.1)]);

//========================
// Face 6
//========================

melees([0,180,0], [0, 0,-(cube_size/2-svg_extrude_height+0.1)]);