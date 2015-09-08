// Tutorial for Processing
// between every /* and */ is a program that can run by itself





/*
// Canvas
// size(x,y); x determines the x-axis and y determines the y-axis;
size(800,600);
*/





/*
// Point
// point(x,y); same as drawing a canvas
size(640,480);
point(240,60);
*/





/*
// Simple graphics
// whichever line of code is at the top, that shape will be at the bottom
size(640,480);
// line(x1,y1,x2,y2);
// line(x-axis of starting point,y-axis of starting point, x-axis of end point, y-axis of end point);
line(0,0,320,320);
// triangle(x1,y1,x2,y2,x3,y3);
triangle(300,0,5,320,600,430);
// quad(x1,y1,x2,y2,x3,y3,x4,y4);
// check the two lines below to see the difference, comment out one line and see the effect of the other
quad(20,20,100,20,20,100,100,100);
quad(20,20,100,20,100,100,20,100);
// rect(x,y,width,height);
// (x,y)marks the upper left corner of the rectangle
rect(20,20,400,300);
// ellipse(x,y,width,height);
// (x,y)marks the center of the ellipse
ellipse(320,240,100,100);
// arc(x,y,width,height,start,stop);
// (x,y) marks the center of the arc and (start,stop) ranges from 0 to 2*pi
// special angles include PI,QUARTER_PI,HALF_PI,TWO_PI
arc(500,400,50,50,1,2);
arc(500,400,50,50,radians(45),radians(90));
*/





/*
// Smooth
size(640,480);
ellipse(320,240,50,50);
smooth();
ellipse(320,240,80,80);
noSmooth();
ellipse(320,240,100,100);
*/





/*
// StrokeWeight
size(640,480);
smooth();
ellipse(75,60,90,90);
strokeWeight(4);
ellipse(175,60,90,90);
strokeWeight(8);
ellipse(275,60,90,90);
strokeWeight(12);
ellipse(375,60,90,90);
*/





/*
// Shape of joint lines
size(480,120);
smooth();
strokeWeight(12);
// This mode creates a round on the corner of the rectangle
strokeJoin(ROUND);
rect(40,25,70,70);
strokeJoin(BEVEL);
rect(140,25,70,70);
// This mode creates a square cap at the two ends of the line
strokeCap(SQUARE);
line(270,25,340,95);
strokeCap(ROUND);
line(350,25,420,95);
*/





/*
// GreyScale
size(480,120);
smooth();
background(0);
// fill(x) x indicates the greyScale while 0 is black and 255 is white
fill(204);
ellipse(132,82,200,200);
fill(153);
ellipse(228,-16,200,200);
fill(102);
ellipse(268,118,200,200);
*/





/*
// noStroke && noFill
size(480,120);
smooth();
fill(153);
ellipse(132,82,200,200);
noFill();
ellipse(228,-16,200,200);
noStroke();
ellipse(268,118,200,200);
*/





/*
// RGB color Mode
// fill(R,G,B,alpha);
// fill(red,green,blue,transparency);
// Can check the color selector in Tools
size(480,120);
noStroke();
smooth();
background(0,26,51);
fill(255,0,0,50);
ellipse(132,82,200,200);
fill(0,255,0,100);
ellipse(228,-16,200,200);
fill(0,0,255,150);
ellipse(268,118,200,200);
*/





/*
// Self-designed shapes
size(480,240);
beginShape();
// The shape follows the order you write the vertexes
vertex(180,82);
vertex(207,36);
vertex(214,63);
vertex(407,11);
vertex(412,30);
vertex(219,82);
vertex(226,109);
endShape();

beginShape();
vertex(180,82+120);
vertex(207,36+120);
vertex(214,63+120);
vertex(407,11+120);
vertex(412,30+120);
vertex(219,82+120);
vertex(226,109+120);
// Close gap
endShape(CLOSE);
*/





/*
// Variables
size(480,120);
smooth();
// [variable type][variable name] = value;
// if the value of y and d is changed, then the value for ellipse can be changed easily
int y = 60;
int d = 80;
ellipse(75,y,d,d);
ellipse(175,y,d,d);
ellipse(275,y,d,d);
*/





/*
// width && height
size(480,120);
smooth();
line(0,0,width,height);
line(width,0,0,height);
ellipse(width/2,height/2,60,60);
*/





/*
// for loop
size(480,120);
smooth();
strokeWeight(8);
// for(init; test; update){
  // statements;
// }
for(int i=20; i<400; i+=60){
  line(i, 40, i+60, 80);
}
*/





/*
size(480,120);
background(0);
smooth();
noStroke();
for(int y = 0; y<= height; y += 40){
  for(int x = 0; x<=width; x += 40){
    fill(255, 140);
    ellipse(x, y, 40, 40);
  }
}
*/





/*
// draw() && setup()
// Whatever code in void draw() will be repeated endlessly
// Whatever code in void setup() will be run for only once
void draw(){
 println("I'm drawing.");
 println(frameCount); 
}
*/





/*
// Tracing
// mouseX means the x position of mouse and mouseY means the y position of mouse
void setup(){
 size(480,120);
fill(0,102);
smooth();
noStroke();
}

void draw(){
 background(255);
 // You can choose to add the above line or not, but the effect will be different
 ellipse(mouseX,mouseY,9,9); 
}
*/





/*
// pmouseX & pmouseY
// These two commands help connect points that are discontinuous, since pmouseX & pmouseY stores the value of the previous mouseX & mouseY value
void setup(){
  size(480,120);
  strokeWeight(4);
  smooth();
  stroke(0,102);
}

void draw(){
  line(mouseX,mouseY,pmouseX,pmouseY);
}
*/





/*
// dist()
// dist(x1,y1,x2,y2) calculates the distance between the two points
void setup(){
  size(480,120);
  smooth();
  stroke(0,102);
}

void draw(){
  float weight = dist(mouseX,mouseY,pmouseX,pmouseY);
  strokeWeight(weight);
  line(mouseX,mouseY,pmouseX,pmouseY);
}
*/





/*
// easing
// This makes the point follow the mouse but from a distance
float x;
float easing = 0.01;
float diameter = 12;

void setup(){
  size(480,120);
  smooth();
}

void draw(){
  float targetX = mouseX;
  x+=(targetX - x)*easing;
  ellipse(x,40,12,12);
  println(targetX + ":" + x);
}
*/





/*
// map()
// map(value,x1,y1,x2,y2);
// if you want to change the value of one number in range 1 into another number in range 2, then x1,y1 are the min and max of range 1 and x2,y2 are the min and max of range 2
void setup(){
  size(480,120);
  strokeWeight(12);
  smooth();
}

void draw(){
  background(204);
  stroke(255);
  line(120,60,mouseX,mouseY);
  stroke(0);
  float mx = map(mouseX,0,width,60,180);
  line(120,60,mx,mouseY);
}
*/





/*
// mousePressed
// mousePressed checks if the mouse has been pressed (similar to keyPressed)
void setup(){
  size(240,120);
  smooth();
  strokeWeight(30);
}

void draw(){
  background(204);
  stroke(102);
  line(40,0,70,height);
  if (mousePressed == true){
  // booleans can be written in the form "if (mousePressed){" because booleans shall be either true or false
    stroke(0);
  }
  line(0,70,width,50);
}
*/





/*
// if & else
void setup(){
  size(240,120);
  smooth();
  strokeWeight(30);
}

void draw(){
  background(204);
  stroke(102);
  line(40,0,70,height);
  if (mousePressed){
    stroke(0);
  } else {
    stroke(255);
  }
  line(0,70,width,50);
}
*/





/*
// mouseButton
// mouseButton keeps track of which part of the mouse is clicked
void setup(){
  size(120,120);
  smooth();
  strokeWeight(30);
}

void draw(){
  background(204);
  stroke(102);
  line(40,0,70,height);
  if (mousePressed){
    if (mouseButton == LEFT){
      stroke(255);
    } else {
      stroke(0);
    }
    line(0,70,width,50);
  }
}
*/





/*
// find the mouse
float x;
int offset = 10;

void setup(){
  size(240,120);
  smooth();
  x = width/2;
}

void draw(){
  background(204);
  if (mouseX > x){
    x += 0.5;
    offset = -10;
  }
  if (mouseX < x){
    x -= 0.5;
    offset = 10;
  }
  line(x,0,x,height);
  line(mouseX,mouseY,mouseX + offset,mouseY - 10);
  line(mouseX,mouseY,mouseX + offset,mouseY + 10);
  line(mouseX,mouseY,mouseX + offset*3,mouseY);
}
*/





/*
// see if mouse is in a circle
int x = 120;
int y = 60;
int radius = 12;

void setup(){
  size(240,120);
  smooth();
  ellipseMode(RADIUS);
}

void draw(){
  background(204);
  float d = dist(mouseX,mouseY,x,y);
  if (d < radius){
    radius ++;
    fill(0);
  } else {
    fill(255);
  }
  ellipse(x,y,radius,radius);
}
*/





/*
// see if mouse is in a rectangle
int x = 80;
int y = 30;
int w = 80;
int h = 60;

void setup(){
  size(240,120);
}

void draw(){
  background(204);
  if ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h)){
    fill(0);
  } else {
    fill(255);
  }
  rect(x,y,w,h);
}
*/





/*
// the second line will be drawn if a button is pressed
void setup(){
  size(480,120);
  smooth();
}

void draw(){
  background(204);
  line(20,20,220,100);
  if (keyPressed){
    line(220,20,20,100);
  }
}
*/





/*
// print the key that you are pressing
void setup(){
  size(120,120);
  textSize(64);
  textAlign(CENTER);
}

void draw(){
  background(0);
  text(key,60,80);
}
*/





/*
// now let's try to draw a robot for later use
float x = 60;
float y = 440;
int radius = 45;
int bodyHeight = 160;
int neckHeight = 70;

float easing = 0.02;

void setup(){
  size(360,480);
  smooth();
  strokeWeight(2);
  ellipseMode(RADIUS);
}

void draw(){
  int targetX = mouseX;
  x += (targetX - x) * easing;
  
  if (mousePressed){
    neckHeight = 16;
    bodyHeight = 90;
  } else {
    neckHeight = 70;
    bodyHeight = 160;
  }
  
  float ny = y - bodyHeight - neckHeight - radius;
  
  background(204);
  
  // neck
  stroke(102);
  line(x+12, y-bodyHeight, x+12, ny);
  
  // antenna
  line(x+12, ny, x-18, ny-43);
  line(x+12, ny, x+42, ny-99);
  line(x+12, ny, x+78, ny+15);
  
  // body
  noStroke();
  fill(102);
  ellipse(x, y-33, 33, 33);
  fill(0);
  rect(x-45, y-bodyHeight, 90, bodyHeight-33);
  
  // head
  fill(0);
  ellipse(x+12, ny, radius, radius);
  fill(255);
  ellipse(x+24, ny-6, 14, 14);
  fill(0);
  ellipse(x+24, ny-6, 3, 3);
}
*/





/*
// Load images
// Remember that the image should be in the same folder as the pde document
// You need to first delare PImage and then set whatever variable and load that image. 
// Then, for the image to be shown, you need to write (variable_name, x, y, w, h) with x&y indicating the position of top left corner, w&h indicating the width & height
PImage img;

void setup(){
  size(480,120);
  img=loadImage("LittleBusters.jpg");
}

void draw(){
  image(img,0,0,480,120);
}
*/





/*
//An advanced treatment of the image
PImage img;

void setup(){
  size(480,120);
  img=loadImage("LittleBusters.jpg");
}

void draw(){
  background(0);
  image(img,0,0,mouseX*2,mouseY*2);
}
*/





/*
// Now let's try some gifs
PImage img;
// or PShape network;

void setup(){
  size(480,120);
  img=loadImage("clouds.gif");
  // network=loadShape("clouds.svg");
}

void draw(){
  background(255);
  image(img,0,0);
  image(img,0,mouseY * -1);
  // shape(network,0,0);
  // image(network,0,mouseY * -1);
}
*/





/*
//Using text
//Before you try out any font, you should first click "Create Font from Tools" 
PFont font;

void setup(){
  size(480,120);
  smooth();
  font=loadFont("AdobeFanHeitiStd-Bold-48.vlw");
  textFont(font);
}

void draw(){
  background(102);
  if (keyPressed){
    fill(random(255),random(255),random(255));
  } else {
    fill(255);
  }
  textSize(36);
  text("I am so colorful",25,60);
  textSize(18);
  text("I am so colorful",27,90);
}
*/






// String
// String variable declares texts
PFont font;
String quote="I am so colorful";

void setup(){
  size(480,120);
  smooth();
  font=loadFont("AdobeFanHeitiStd-Bold-48.vlw");
  textFont(font);
}

void draw(){
  background(102);
  if (keyPressed){
    fill(random(255),random(255),random(255));
  } else {
    fill(255);
  }
  textSize(36);
  text(quote,25,60);
  textSize(18);
  text(quote,27,90);
}
