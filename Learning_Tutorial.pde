//Tutorial for Processing
//between every /* and */ is a program that can run by itself

/*
//Canvas
//size(x,y); x determines the x-axis and y determines the y-axis;
size(800,600);
*/


/*
//Point
//point(x,y); same as drawing a canvas
size(640,480);
point(240,60);
*/

/*
//Simple graphics
//whichever line of code is at the top, that shape will be at the bottom
size(640,480);
//line(x1,y1,x2,y2);
//line(x-axis of starting point,y-axis of starting point, x-axis of end point, y-axis of end point);
line(0,0,320,320);
//triangle(x1,y1,x2,y2,x3,y3);
triangle(300,0,5,320,600,430);
//quad(x1,y1,x2,y2,x3,y3,x4,y4);
//check the two lines below to see the difference, comment out one line and see the effect of the other
quad(20,20,100,20,20,100,100,100);
quad(20,20,100,20,100,100,20,100);
//rect(x,y,width,height);
//(x,y)marks the upper left corner of the rectangle
rect(20,20,400,300);
//ellipse(x,y,width,height);
//(x,y)marks the center of the ellipse
ellipse(320,240,100,100);
//arc(x,y,width,height,start,stop);
//(x,y) marks the center of the arc and (start,stop) ranges from 0 to 2*pi
//special angles include PI,QUARTER_PI,HALF_PI,TWO_PI
arc(500,400,50,50,1,2);
arc(500,400,50,50,radians(45),radians(90));
*/

/*
//Smooth
size(640,480);
ellipse(320,240,50,50);
smooth();
ellipse(320,240,80,80);
noSmooth();
ellipse(320,240,100,100);
*/

/*
//StrokeWeight
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
//Shape of joint lines
size(480,120);
smooth();
strokeWeight(12);
//This mode creates a round on the corner of the rectangle
strokeJoin(ROUND);
rect(40,25,70,70);
strokeJoin(BEVEL);
rect(140,25,70,70);
//This mode creates a square cap at the two ends of the line
strokeCap(SQUARE);
line(270,25,340,95);
strokeCap(ROUND);
line(350,25,420,95);
*/

/*
//GreyScale
size(480,120);
smooth();
background(0);
//fill(x) x indicates the greyScale while 0 is black and 255 is white
fill(204);
ellipse(132,82,200,200);
fill(153);
ellipse(228,-16,200,200);
fill(102);
ellipse(268,118,200,200);
*/

/*
//noStroke && noFill
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
//RGB color Mode
//fill(R,G,B,alpha);
//fill(red,green,blue,transparency);
//Can check the color selector in Tools
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
//Self-designed shapes
size(480,240);
beginShape();
//The shape follows the order you write the vertexes
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
//Close gap
endShape(CLOSE);
*/

/*
//Variables
size(480,120);
smooth();
//[variable type][variable name] = value;
//if the value of y and d is changed, then the value for ellipse can be changed easily
int y = 60;
int d = 80;
ellipse(75,y,d,d);
ellipse(175,y,d,d);
ellipse(275,y,d,d);
*/

/*
//width && height
size(480,120);
smooth();
line(0,0,width,height);
line(width,0,0,height);
ellipse(width/2,height/2,60,60);
*/

/*
//for loop
size(480,120);
smooth();
strokeWeight(8);
//for(init; test; update){
  //statements;
//}
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
//draw() && setup()
//Whatever code in void draw() will be repeated endlessly
//Whatever code in void setup() will be run for only once
void draw(){
 println("I'm drawing.");
 println(frameCount); 
}
*/


//

