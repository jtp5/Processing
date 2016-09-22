 boolean intersects(int ballx, int bally, int paddlex, int paddley, int paddleLength){
  if (bally > paddley && ballx > paddlex && ballx < paddlex + paddleLength)
 return true;
else
return false;
 }

import ddf.minim.*;
Minim minim;
AudioSample sound;
void setup(){
 minim = new Minim (this);
 sound = minim.loadSample("What are those Sound Effect.mp3", 128);
 size (1500, 900);
}
int ballx = 750;
int bally = 450;
int speedx = 5;
int speedy = -5;
void draw(){
 background(255, 255, 255);
 fill(0, 0, 0);
 rect(mouseX, 850, 200, 10);
 fill(0, 0, 255);
 stroke(0, 0, 0);
 ellipse(ballx, bally, 30, 30);
 if (ballx <= 1500){
  ballx += speedx;
 }
 if (ballx == 1500){
 speedx = -speedx;
 ballx += speedx; 
 }
 if (ballx == 0){
 speedx = -speedx;
 ballx += speedx;
 }
 if (bally >= 0){
  bally += speedy; 
 }
 if (bally == 0){
 speedy = -speedy;
 bally += speedy; 
 }
 if (bally == 900){
 sound.trigger();
 //speedy = -speedy;
 //bally += speedy; 
 }
 if (intersects (ballx, bally, mouseX, 850, 200)){
   speedy = -speedy;
   bally += speedy;
 }
}
