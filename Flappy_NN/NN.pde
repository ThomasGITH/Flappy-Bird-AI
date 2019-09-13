
float target(float HD, float LD)
{
  //medium height = calculate ideal height-for-(ideal length-for-HD)
  //difference_from_medium = HD - medium height
  //if(difference_from_medium < range)
  //return 1
  //else
  //return 0
  
  //Tip: de 1 & 0 moeten misschien andersom zijn
  if(LD >= 56 && (HD >= -75))
  {
    //print(1);
    //print("\n");
    return 1;
  }
  else
  {
    //print(0);
    //print("\n");
  return 0;
  }
  
}

float sigmoid(float x)
{
  return 1/(1+pow(2.71828182846, -x));
}

float learning_rate = 0.2;

float w1 = random(1)*.2-.1;
float w2 = random(1)*.2-.1;
float b = random(1)*.2-.1;

ArrayList<float[]> dataList = new ArrayList<float[]>();

void giveInput(){
float[] point = {heightDifference, lengthDifference, target(heightDifference, lengthDifference)};
dataList.add(point);
float output = train();
print(output + "\n");
print("\n");
jump_or_not(output);
}

float train(){
  
  for(int i = 0; i < 5000; i++){
  //Geef input
float[] point = dataList.get(round(random(0,dataList.size() - 1)));
float target = point[2];
//Maak (training) voorspelling
float z = w1 * point[0] + w2 * point[1] + b;
float pred = sigmoid(z);

//Bereken cost & back-propagate
float cost = pow((pred - target),2);

//Derivatives berekeningen:
float dcost_dpred = 2 * (pred - target);
float dpred_dz = sigmoid(z) * (1-sigmoid(z));

float dz_dw1 = point[0];
float dz_dw2 = point[1];
float dz_db = 1;

float dcost_dw1 = dcost_dpred * dpred_dz * dz_dw1;
float dcost_dw2 = dcost_dpred * dpred_dz * dz_dw2;
float dcost_db =  dcost_dpred * dpred_dz * dz_db;

w1 -= learning_rate * dcost_dw1;
w2 -= learning_rate * dcost_dw2;
b -= learning_rate * dcost_db;

  }
  
 float z = w1 * heightDifference + w2 * lengthDifference + b;
  float pred = sigmoid(z);
  return pred;
}


void jump_or_not(float output)
{
  if(output > 0.5)
  {

  }
  else
  {
       velocityY = 0; 
       accelerationY -= jumpforce; 
  }
}

//Geef input (& target)
