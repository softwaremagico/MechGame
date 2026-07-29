include <./components/artillery.scad>;

cube_size=10;

module bullets(rotation, translation) {
    color([0,0,0]){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            artillery();
        }
    }
}

//========================
// DICE
//========================

difference(){
    color([1,1,0])
    intersection(){
        cube(cube_size,center=true);
        sphere(cube_size*0.71,$fn=150);}
}


//========================
// Face 1
//========================
bullets([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,0]);
bullets([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,2]);
bullets([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,-2]);

//========================
// Face 2
//========================

bullets([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,1]);
bullets([-90,180,0], [0,cube_size/2-svg_extrude_height+0.1,-1]);

//========================
// Face 3
//========================

bullets([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,0]);
bullets([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,2]);
bullets([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,-2]);

//========================
// Face 4
//========================

bullets([-90,0,0], [0,-(cube_size/2-svg_extrude_height+1.1),1]);
bullets([-90,0,0], [0,-(cube_size/2-svg_extrude_height+1.1),-1]);

//========================
// Face 5
//========================

// EMPTY

//========================
// Face 6
//========================

// EMPTY