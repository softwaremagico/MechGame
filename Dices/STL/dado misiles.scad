include <./components/missile.scad>;

cube_size=10;
missile_X=0.8;
missile_Y=2;


module missiles(rotation, translation) {
    color("white"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            missile();
        }
    }
}

//========================
// DICE
//========================

//difference(){
//    color("purple")
//    intersection(){
//        cube(cube_size,center=true);
//        sphere(cube_size*0.71,$fn=150);}
//}


//========================
// Face 1
//========================
missiles([90,0,90], [cube_size/2-svg_extrude_height+0.1,missile_X,0]);
missiles([90,0,90], [cube_size/2-svg_extrude_height+0.1,-missile_X,missile_Y]);
missiles([90,0,90], [cube_size/2-svg_extrude_height+0.1,-missile_X,-missile_Y]);

//========================
// Face 2
//========================

missiles([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,0]);

//========================
// Face 3
//========================

missiles([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,0]);

//========================
// Face 4
//========================

missiles([-90,180,180], [0, -(cube_size/2-svg_extrude_height+0.1),0]);

//========================
// Face 5
//========================

missiles([0,0,180], [0, missile_Y*0.7 ,(cube_size/2-svg_extrude_height+0.1)]);
missiles([0,0,180], [0, -missile_Y*0.7 ,(cube_size/2-svg_extrude_height+0.1)]);

//========================
// Face 6
//========================

missiles([0,0,0], [0, missile_Y*0.7 ,-(cube_size/2-svg_extrude_height+1.1)]);
missiles([0,0,0], [0, -missile_Y*0.7 ,-(cube_size/2-svg_extrude_height+1.1)]);