include <./components/particle.scad>;

cube_size=10;
particle_distance=1.6;

module particles(rotation, translation) {
    color("white"){
        translate(translation)
        rotate(rotation){
            linear_extrude(height = svg_extrude_height)
            particle();
        }
    }
}

//========================
// DICE
//========================

//difference(){
//    color("#FF0090")
//    intersection(){
//        cube(cube_size,center=true);
//        sphere(cube_size*0.71,$fn=150);}
//}


//========================
// Face 1
//========================
particles([90,0,90], [cube_size/2-svg_extrude_height+0.1,0,0]);
particles([90,0,90], [cube_size/2-svg_extrude_height+0.1,particle_distance,particle_distance]);
particles([90,0,90], [cube_size/2-svg_extrude_height+0.1,-particle_distance,particle_distance]);
particles([90,0,90], [cube_size/2-svg_extrude_height+0.1,particle_distance,-particle_distance]);
particles([90,0,90], [cube_size/2-svg_extrude_height+0.1,-particle_distance,-particle_distance]);

//========================
// Face 2
//========================

particles([-90,180,0], [particle_distance,cube_size/2-svg_extrude_height+0.1,particle_distance]);
particles([-90,180,0], [-particle_distance,cube_size/2-svg_extrude_height+0.1,particle_distance]);
particles([-90,180,0], [particle_distance,cube_size/2-svg_extrude_height+0.1,-particle_distance]);
particles([-90,180,0], [-particle_distance,cube_size/2-svg_extrude_height+0.1,-particle_distance]);

//========================
// Face 3
//========================

particles([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),0,0]);
particles([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),-particle_distance,particle_distance]);
particles([-90,180,90], [-(cube_size/2-svg_extrude_height+0.1),particle_distance,-particle_distance]);

//========================
// Face 4
//========================

particles([-90,180,180], [particle_distance,-(cube_size/2-svg_extrude_height+0.1), particle_distance]);
particles([-90,180,180], [0,-(cube_size/2-svg_extrude_height+0.1), 0]);
particles([-90,180,180], [-particle_distance,-(cube_size/2-svg_extrude_height+0.1), -particle_distance]);

//========================
// Face 5
//========================

// EMPTY

//========================
// Face 6
//========================

// EMPTY