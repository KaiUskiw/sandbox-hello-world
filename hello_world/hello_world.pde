//Global Variables
int appWidth, appHeight;
//
//declare geometry: square, landscape, portrait
size(400, 400);
fullScreen();
appWidth = width;
appHeight = height;
String ls="landscape or square", p="portrait", DO="Display Orientation", intruct="bru turn yhou phun";
String orientation = ( width >= height ) ? ls : p;
println (DO, orientation);
println("\t\t\tWidth ="+width,"\tHeight="+height); //key variables
println("Display monitor:", "\twidth="+ displayWidth, "&height"+displayHeight);
//
//fit CANVAS into display monitor
if (width > displayWidth)  appWidth = 0; //CANVAS-width will not fit
if ( height > displayHeight ) appHeight = 0; //CANVAS-height will not fit
if ( appWidth != 0 && appHeight != 0 ) print("Display Geometry is Good to go.");
if ( appWidth == 0 || appHeight == 0) println("STOP, is broken");
