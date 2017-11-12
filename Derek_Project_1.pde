 class Box
{
    int size;
    int toggle;
}



int toggle = 1;

final int BOX_MAX_WIDTH = 50;
final int CANVAS_WIDTH = 800;
final int CANVAS_HEIGHT = 800;
int boxes_in_view = int(float((CANVAS_WIDTH/2) / BOX_MAX_WIDTH) * 1.5);
Box[] boxes = new Box[boxes_in_view * 2];

void setup()
{
    size(800, 800, P3D);
    int toggle = 1;
    boxes[0] = new Box();
    
    int size_baby = 10;
    boxes[0].size = 10;
    boxes[0].toggle = 1;
    for(int i = 1; i < (boxes_in_view * 2); i++)
    {
        boxes[i] = new Box();

        if(boxes[i - 1].size + (toggle * size_baby) >= 10 && boxes[i - 1].size + (toggle * size_baby) <= BOX_MAX_WIDTH)
        {
            boxes[i].toggle = 1 * toggle;
            boxes[i].size = boxes[i - 1].size + (toggle * size_baby);
        }
        else
        {
            toggle *= -1;
            boxes[i].toggle = 1 * toggle;
            boxes[i].size = boxes[i - 1].size + (toggle * size_baby);
        }
    }
}

void draw()
{
    background(100);
    lights();

    
    if(frameCount % 1 == 0)
    {
        for (int i = 0; i < (boxes_in_view * 2); i++)
        {
            if((boxes[i].size + (1 * boxes[i].toggle)) >= 0 && (boxes[i].size + (1 * boxes[i].toggle)) <= BOX_MAX_WIDTH)
            {
                boxes[i].size += 1 * boxes[i].toggle;
            }
            else
            {
                boxes[i].toggle *= -1;
                boxes[i].size += 1 * boxes[i].toggle;
            }
        }
    }

    float x_rotation_offset;
    float y_rotation_offset;
    float z_rotation_offset;

    fill(130, 177, 255);

    for (int i = 1; i < boxes_in_view; i++)
    {
        for (int j = 1; j < boxes_in_view; j++)
        {
            if(j <= 3 || i <= 3)
            {
                //fill(255, 138, 128);
            }
            else
            {
                fill(130, 177, 255);
            }

            x_rotation_offset = 0 - (j * ((BOX_MAX_WIDTH/2) * 1.42));
            y_rotation_offset = 0 - (i * ((BOX_MAX_WIDTH/2) * 1.42)) + (j * ((BOX_MAX_WIDTH/2) * 1));
            z_rotation_offset = 0 + (i * ((BOX_MAX_WIDTH/2) * 1.42) + (j * ((BOX_MAX_WIDTH/2) * 1)));
            pushMatrix();
            translate(width/2 + x_rotation_offset, height/2 + y_rotation_offset, (-100) + z_rotation_offset);
            rotateX(-PI/4);
            rotateY(PI/4);  
            strokeWeight(1);
            box(boxes[i + j].size);
            popMatrix();
        }
    }

    for (int i = 1; i < boxes_in_view; i++)
    {
        for (int j = 1; j < boxes_in_view; j++)
        {
            x_rotation_offset = 0 + (j * ((BOX_MAX_WIDTH/2) * 1.42));
            y_rotation_offset = 0 - (i * ((BOX_MAX_WIDTH/2) * 1.42)) + (j * ((BOX_MAX_WIDTH/2) * 1));
            z_rotation_offset = 0 + (i * ((BOX_MAX_WIDTH/2) * 1.42) + (j * ((BOX_MAX_WIDTH/2) * 1)));
            pushMatrix();
            translate(width/2 + x_rotation_offset, height/2 + y_rotation_offset, (-100) + z_rotation_offset);
            rotateX(-PI/4);
            rotateY(PI/4);  
            strokeWeight(1);
            box(boxes[i + j].size);
            popMatrix();
        }
    }
    
    for (int i = 1; i < boxes_in_view; i++)
    {
        for (int j = 1; j < boxes_in_view; j++)
        {
            x_rotation_offset = 0 + (j * ((BOX_MAX_WIDTH/2) * 1.42)) - (i * ((BOX_MAX_WIDTH/2) * 1.42));
            y_rotation_offset = 0 + (i * ((BOX_MAX_WIDTH/2) * 1)) + (j * ((BOX_MAX_WIDTH/2) * 1));
            z_rotation_offset = 0 + (i * ((BOX_MAX_WIDTH/2) * 1) + (j * ((BOX_MAX_WIDTH/2) * 1)));
            pushMatrix();
            translate(width/2 + x_rotation_offset, height/2 + y_rotation_offset, (-100) + z_rotation_offset);
            rotateX(-PI/4);
            rotateY(PI/4);  
            strokeWeight(1);
            box(boxes[i + j].size);
            popMatrix();
        }
    }

}