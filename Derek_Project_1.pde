int x_shift = 250;
int y_shift = 250;
int z_shift = 0;
int[] box_size = {0, 10, 20, 30, 40, 50, 40, 30, 20, 10};
void setup()
{
    size(500, 500, P3D);
}

void draw()
{
    background(100);
    lights();

    
    for (int i = 0; i < 10; i++)
    {
        if((box_size[i] - 1) >= 0)
        {
            box_size[i] -= 1;
        }
        else
        {
            box_size[i] = 50;    
        }
    }
    for(int i = 1; i < 10; i++)
    {
        pushMatrix();
        translate(250, 250 - (i * (25 * 1.42)), (-100) + (i * (25 * 1.42)));
        rotateX(-PI/4);
        rotateY(PI/4);  
        strokeWeight(1);
        box(box_size[i]);
        popMatrix();
    }

    for(int i = 1; i < 10; i++)
    {
        pushMatrix();
        translate(250  - (i * (25 * 1.42)), 250 + (i * (25 * 1)), (-100) + (i * (25 * 1)));
        rotateX(-PI/4);
        rotateY(PI/4);  
        strokeWeight(1);
        box(box_size[i]);
        popMatrix();
    }

    for(int i = 1; i < 10; i++)
    {
        pushMatrix();
        translate(250 + (i * (25 * 1.42)), 250 + (i * (25 * 1)), (-100) + (i * (25 * 1)));
        rotateX(-PI/4);
        rotateY(PI/4);  
        strokeWeight(1);
        box(box_size[i]);
        popMatrix();
    }

    /*
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
    */
}