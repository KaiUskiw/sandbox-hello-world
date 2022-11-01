//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, blue=#0DA6DB;
float thick, thin;
Boolean grayScale=false, randomColour=false, blackBackground=false, nightMode=false;
//
//
void setup() {
//declare geometry: square, landscape, portrait
size(1000, 1000); //Use size for debugging
//fullScreen(); //Use Fullscreen for easy deployment
appWidth = width;
appHeight = height;
//
//Concatenation
println("\t\t\tWidth ="+width,"\tHeight="+height); //key variables
println("Display monitor:", "\twidth="+ displayWidth, "&height"+displayHeight);
//
//Ternary Operator
String ls="landscape or square", p="portrait", DO="Display Orientation", instruct="bru turn your phun";
//String orientation = ( appWidth >= appHeight ) ? ls : p;
//println (DO, orientation);
if ( appWidth < appHeight) { //Declare Landscape Mode
 println(instruct);
} else {
   //Fit CANVAS into display monitor
   if ( appWidth > displayWidth)  appWidth = 0; //CANVAS-width will not fit
   if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
   if ( appWidth != 0 && appHeight != 0 ) { 
   print("Display Geometry is Good to go.");
   } else {
     println("STOP, is broken");
   }
}
//
//if ORIENTATION is wrong ... feedback to change it
//if ( orientation==p ) println(instruct);
//
//Population
centerWidth = appWidth * 1/2;
centerHeight = appHeight * 1/2;
xStart = centerWidth - ( appWidth * 1/4 ) ;
yStart = centerHeight - ( appHeight * 1/4 ) ;
widthRect = appWidth * 1/2;
heightRect = appHeight * 1/2;
 thick = appWidth * 1/70;
 thin =  appWidth * 1/140;
} //End setup
//
void draw() {
   background(225); //Gray scale 0-255
   //random(a, b)
   background(color( random (0, 150), random(0, 120), random(0, 150)  ) ); //color(r,g,b), Night Mode, Casting
   //Night mode
   //
   fill(white);
   strokeWeight(thick); //noStroke()
    //Night Mode Decision
  if ( nightMode == true )
  {
    if ( blackBackground == true ) background(black);
  }
   ellipse(500,300,300,300);
   rect(350,450,300,380,60,60,40,40);
   ellipse(420,300,100,100);
   ellipse(520,300,100,100);
   ellipse(480,390,200,50);
   rect(50,50,300,200,80,80,80,80);
   rect(545,820,100,100,1,1,50,50);
   rect(360,820,100,100,1,1,50,50);
   rect(250,500,100,100,30,30,30,30);
   rect(650,500,100,100,30,30,30,30);
   ellipse(400,300,20,20);
   ellipse(500,300,20,20);
   } //End draw
//
void keyPressed() {
  grayScale = false;
  randomColour = false;
  blackBackground = false; 
  if ( key == 'A' || key == 'a' ) grayScale = true;
  if ( key == 'S' || key == 's' ) randomColour = true;
  if ( key == 'W' || key == 'w' ) blackBackground = true;
  } 
//end keyPressed
//
void mousePressed() {} //end mousePressed
//
// End Main Program
