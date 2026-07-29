cube_size=10;

difference(){
//Cuerpo del dado
    intersection(){
        cube(cube_size,center=true);
        sphere(cube_size*0.71,$fn=150);}
}