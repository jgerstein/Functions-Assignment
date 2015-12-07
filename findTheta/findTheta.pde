float rx = 2;
float ry = -2;
float fx = 1;
float fy = 3;

void setup(){
}

void draw(){
  println(findWorkAngle(rx,ry, fx, fy));
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

  scalarx = abs(rx*fx);
  scalary = abs(ry*fy);
  scalar = scalarx + scalary; 

  dist = sqrt(pow(rx,2)+pow(ry,2));
  force = sqrt(pow(fx,2)+pow(fy,2));
  forcexdist = dist*force;

  theta = acos(scalar/forcexdist);
  thetadegrees = theta*(180/PI);
  return(thetadegrees);
}