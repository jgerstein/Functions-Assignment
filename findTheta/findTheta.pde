float rx = 2; //plug in x and y values of displacement and force
float ry = -2;
float fx = 1;
float fy = 3;

void setup(){
}

void draw(){
  println(findWorkAngle(rx,ry, fx, fy)); //print value of theta in degrees, returned from float findWorkAngle
}


float findWorkAngle(float rx,float ry,float fx,float fy){
  float scalarx; 
  float scalary;
  float scalar;
  float dist;
  float force;
  float forcexdist;
  float theta;
  float thetadegrees; 

  scalarx = abs(rx*fx); //take absolute value of x components
  scalary = abs(ry*fy);
  scalar = scalarx + scalary; //add scalars

  dist = sqrt(pow(rx,2)+pow(ry,2)); //use distance formula to find overall displacement
  force = sqrt(pow(fx,2)+pow(fy,2));
  forcexdist = dist*force;

  theta = acos(scalar/forcexdist); //take arc cosine of scalar/forcexdist
  thetadegrees = theta*(180/PI); //convert from radians to degrees
  return(thetadegrees);
}