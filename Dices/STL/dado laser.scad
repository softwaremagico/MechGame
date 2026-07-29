include <./components/laser.scad>;

cube_size=10;

module lasers(rotation, translation) {
    color("white"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            laser();
        }
    }
}

//========================
// DICE
//========================

difference(){
    color("#262a76")
    intersection(){
        cube(cube_size,center=true);
        sphere(cube_size*0.71,$fn=150);}
}


//========================
// Face 1
//========================
lasers([90,0,90], [cube_size/2-svg_extrude_height+0.01,0,0]);
lasers([90,0,90], [cube_size/2-svg_extrude_height+0.01,0,2]);
lasers([90,0,90], [cube_size/2-svg_extrude_height+0.01,0,-2]);

//========================
// Face 2
//========================

lasers([-90,180,0], [0,cube_size/2-svg_extrude_height+0.01,1]);
lasers([-90,180,0], [0,cube_size/2-svg_extrude_height+0.01,-1]);

//========================
// Face 3
//========================

lasers([-90,180,90], [-(cube_size/2-svg_extrude_height+0.01),0,0]);

//========================
// Face 4
//========================

// EMPTY

//========================
// Face 5
//========================

lasers([0,0,0], [0,-1,(cube_size/2-svg_extrude_height+0.01)]);
lasers([0,0,0], [0,1,(cube_size/2-svg_extrude_height+0.01)]);

//========================
// Face 6
//========================

lasers([0,0,180], [0,-1,-(cube_size/2-svg_extrude_height+1.01)]);
lasers([0,0,180], [0,1,-(cube_size/2-svg_extrude_height+1.01)]);