//Global Variables
int appWidth, appHeight;
//
void setup() {
//declare geometry: square, landscape, portrait
size(700, 400); //Use size for debugging
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

} //End setup
//
void draw() {
    ellipse(180,275,1100,100);
} //End draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {} //end mousePressed
//
// End Main Program
