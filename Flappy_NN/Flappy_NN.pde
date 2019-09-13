
ArrayList<Bar> barList = new ArrayList<Bar>();

void setup()
{
  size(1280,1080);
}

float barSpawnTimer = 400;

float accelerationX, accelerationY, velocityX, velocityY;
float posX = 320, posY = 360;

float gravity = 0.3, jumpforce = 8.5;

float heightDifference, lengthDifference;

boolean enablePlayer;

void draw()
{
  background(102, 255, 255);
  
  barSpawnTimer++;
  if(barSpawnTimer > 200)
  {
    barList.add(new Bar());
    barSpawnTimer = 0;
  }
  for(Bar bar : barList)
  {
    bar.drawBar();
  }
  if(barList.get(0).x < 320)
  {
    barList.remove(0);
  }
  ellipse(barList.get(0).x, barList.get(0).y, 10, 10);  
    
  if(barList.get(0).x < 400){
    enablePlayer = true;
  }
  if(enablePlayer)
  {
    accelerationX += 0;
    accelerationY += gravity;
    velocityX += accelerationX;
    velocityY += accelerationY;
    posX += velocityX;
    posY += velocityY;
    accelerationX *= 0;
    accelerationY *= 0;
    if(posY < 0)
    {
      velocityY = 0;
    }
    stroke(10);
    ellipse(posX,posY,25,25);
            fill(250);

    heightDifference = barList.get(0).y - posY;
    lengthDifference = barList.get(0).x - posX;
    
    if(barSpawnTimer > 10)
    {
        giveInput();
    }
  }
}

boolean released = true;
float REMEMBER_HEIGHT_DIF, REMEMBER_LENGTH_DIF;

void keyPressed()
{
  if(key == ' ')
  {
    velocityY = 0; 
    accelerationY -= jumpforce;
    released = false;
      //print("HD: " + heightDifference + "\n");
      //print("LD: " + lengthDifference + "\n");
      //print("\n");
      REMEMBER_HEIGHT_DIF = heightDifference;
      REMEMBER_LENGTH_DIF = lengthDifference;
      
      if(lengthDifference <= 56 && (heightDifference <= 15 && heightDifference >= -220))
      {
      //print("HD: " + heightDifference + "\n");
      //print("LD: " + lengthDifference + "\n");
      //print("\n");
      }
  }
}

void keyReleased()
{
released = true;
}
