class Box
{
    int size;
    int toggle;
}

int x_shift = 250;
int y_shift = 250;
int z_shift = 0;

Box[] boxes;

int toggle = 1;

void setup()
{
    size(500, 500, P3D);
    boxes = new Box[10];
    for(int i = 0; i < 10; i++)
    {
        println(i);
        boxes[i].size = i * 5;
        boxes[i].toggle = 1;
    }
}

void draw()
{
    background(100);
    lights();

    
    for (int i = 0; i < 10; i++)
    {
        if((boxes[i].size + (1 * boxes[i].toggle)) >= 0 && (boxes[i].size + (1 * boxes[i].toggle)) <= 50)
        {
            boxes[i].size += 1 * boxes[i].toggle;
        }
        else
        {
            boxes[i].toggle *= -1;
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