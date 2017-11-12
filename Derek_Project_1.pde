class Box
{
    int size;
    int toggle;
}

int x_shift = 250;
int y_shift = 250;
int z_shift = 0;

Box[] boxes = new Box[10];

int toggle = 1;

final int BOX_MAX_WIDTH = 50;

void setup()
{
    size(750, 750, P3D);
    
    for(int i = 0; i < 10; i++)
    {
        boxes[i] = new Box();
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
    
    for (int i = 1; i < 10; i++)
    {
        for (int j = 1; j < 10; j++)
        {
            pushMatrix();
            translate(width/2  - (j * (25 * 1.42)) , height/2 - (i * (25 * 1.42))  + (j * (25 * 1)), (-100) + (i * (25 * 1.42) + (j * (25 * 1))));
            rotateX(-PI/4);
            rotateY(PI/4);  
            strokeWeight(1);
            box(50);
            popMatrix();
        }
    }

    for (int i = 1; i < 10; i++)
    {
        for (int j = 1; j < 10; j++)
        {
            pushMatrix();
            translate(width/2  + (j * (25 * 1.42)) , height/2 - (i * (25 * 1.42))  + (j * (25 * 1)), (-100) + (i * (25 * 1.42) + (j * (25 * 1))));
            rotateX(-PI/4);
            rotateY(PI/4);  
            strokeWeight(1);
            box(50);
            popMatrix();
        }
    }
    
    for (int i = 1; i < 10; i++)
    {
        for (int j = 1; j < 10; j++)
        {
            pushMatrix();
            translate(width/2  + (j * (25 * 1.42))  - (i * (25 * 1.42)), height/2 + (j * (25 * 1)) + (i * (25 * 1)), (-100) + (j * (25 * 1)) + (i * (25 * 1)));
            rotateX(-PI/4);
            rotateY(PI/4);  
            strokeWeight(1);
            box(50);
            popMatrix();
        }
    }

}