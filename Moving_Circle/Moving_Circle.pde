void setup(){
  size (1000,1000);
}
int speed = 0;
int v = 5;
void draw(){
  background (225,225,225);
  if (mousePressed){
  fill(0,0,255);
  }
  else{
   fill(255,0,0); 
  }
  ellipse(mouseX,mouseY,40,40);
  //speed = speed + v;
  //if (speed <= 0) {
   //v = -v; 
  //}
  //if (speed >= 1000) { 
  //v = -v;
  //}
}

