include <./components/cover.scad>;

cube_size=10;
cover_distance=2;

module covers(rotation, translation) {
    color("white"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            cover();
        }
    }
}

//========================
// DICE
//========================

//difference(){
//    color("green")
//    intersection(){
//        cube(cube_size,center=true);
//        sphere(cube_size*0.71,$fn=150);}
//}


//========================
// Face 1
//========================
covers([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,-cover_distance/4]);
covers([90,0,90], [cube_size/2-svg_extrude_height+0.1,cover_distance,cover_distance/2-cover_distance/4]);
covers([90,0,90], [cube_size/2-svg_extrude_height+0.1,-cover_distance,cover_distance/2-cover_distance/4]);

//========================
// Face 2
//========================

covers([-90,180,0], [cover_distance/2,cube_size/2-svg_extrude_height+0.1,0]);
covers([-90,180,0], [-cover_distance/2,cube_size/2-svg_extrude_height+0.1,0]);

//========================
// Face 3
//========================

// EMPTY

//========================
// Face 4
//========================

covers([-90,180,180], [0,-(cube_size/2-svg_extrude_height+0.1), 0]);


//========================
// Face 5
//========================

// EMPTY

//========================
// Face 6
//========================

// EMPTY