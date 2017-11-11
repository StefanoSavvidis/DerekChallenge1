int x_shift = 250;
int y_shift = 250;
int z_shift = 0;

void setup()
{
    size(500, 500, P3D);
}

void draw()
{
    background(100);
    lights();

    pushMatrix();
    translate(250 + (25 * 1.42), 250, 0);
    rotateY(PI/4);
    rotateZ(PI/2); 
    strokeWeight(1);
    box(50);
    popMatrix();

    pushMatrix();
    translate(250 - (25 * 1.42), 250, 0);
    rotateY(-PI/4);
    rotateZ(-PI/2);
    box(50);
    popMatrix();

    pushMatrix();
    translate(250, 300, 0);
    rotateX(PI/4);
    rotateZ(PI/4);
    box(50);
    popMatrix();

    /*
    pushMatrix();
    translate(300, 250, 0);
    rotateY(-PI/4);
    box(50);
    popMatrix();
    */
}