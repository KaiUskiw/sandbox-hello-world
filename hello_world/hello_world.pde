//Global Variables
int appWidth, appHeight;
//
void setup() {
//declare geometry: square, landscape, portrait
//size(400, 400); //Use size for debugging
//fullScreen(); //Use Fullscreen for easy deployment
appWidth = width;
appHeight = height;
//
//Concatenation
println("\t\t\tWidth ="+width,"\tHeight="+height); //key variables
println("Display monitor:", "\twidth="+ displayWidth, "&height"+displayHeight);
//
//Ternary Operator
String ls="landscape or square", p="portrait", DO="Display Orientation", instruct="bru turn yhou phun";
String orientation = ( width >= height ) ? ls : p;
println (DO, orientation);
//
//if ORIENTATION is wrong ... feedback to change it
if ( orientation==p ) println(instruct);
//fit CANVAS into display monitor
if (width > displayWidth)  appWidth = 0; //CANVAS-width will not fit
if ( height > displayHeight ) appHeight = 0; //CANVAS-height will not fit
if ( appWidth != 0 && appHeight != 0 ) print("Display Geometry is Good to go.");
if ( appWidth == 0 || appHeight == 0) println("STOP, is broken");
} //End setup
//
void draw() {} //end draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {} //end mousePressed
//
// End Main Program
