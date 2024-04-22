
PImage miPaisaje;
void setup(){
 size ( 800 , 400 );
 background ( 195, 170 , 180 );
 miPaisaje = loadImage ("globos.png");
 
 
}
  
void draw(){
  image ( miPaisaje, 0, 0 );
  println ( mouseX + " / " + mouseY );
  
  // cielo
  
  fill ( 210, 190, 200);
  rect ( 400, 28, 400, 60);
  
  fill ( 230, 190, 190 );
  noStroke ();
  rect ( 400, 50, 400, 80);
  
  fill ( 250, 200, 190 );
  rect ( 400, 90, 400, 60 );
  
  fill ( 250, 205, 195);
  rect ( 400, 72, 400, 30);
  
  fill ( 250, 205, 195);
  rect ( 400, 120, 400, 60);
  
  fill ( 250, 220, 190);
  rect ( 400, 139, 400, 60);
   
  fill ( 250, 195, 170); 
  rect ( 400, 170, 400, 60);
  
  fill ( 250, 150, 150);
  rect ( 400, 196, 400, 60);
  
  fill ( 250, 110, 110);
  rect ( 400, 211, 400, 60);
  
  fill ( 145, 80 , 100);
  rect ( 400, 230, 400, 60);
 
  // Tierra
  
  fill ( 195, 100 , 120);
  triangle ( 549, 218, 800, 220, 549, 250);
  
  fill ( 70, 40, 40, 210);
  triangle ( 400, 242, 800, 220, 800, 242);
  
  rect ( 400, 242, 400, 242);
 
  fill ( 50, 30, 40);
  rect ( 400, 302, 400, 242);
  
  
  // globos
  
  triangle ( 507, 215, 573, 219, 540, 258);
  
  fill ( 70, 30, 40);
  circle ( 541, 206, 70);
  
  fill ( 145, 80 , 100);
  triangle ( 434, 109, 470, 109, 452, 132);
  
  fill ( 145, 80 , 100);
  circle ( 452, 100, 39);
  
  fill ( 250, 140, 120);
  triangle ( 703, 248, 762, 247, 733, 279);
  
  fill ( 230, 90, 80);
  circle ( 732, 229, 68);
  
  // extras
  
  fill ( 0, 0, 0, 100);
  curveTightness ( 8);
  curve ( 409, 168, 405, 178, 435, 161, 420, 164);
  
  curveTightness ( 3);
  curve ( 407, 241, 415, 275, 472, 214, 451, 219);
  
  rect ( 400, 274, 40, 150);
  rect ( 440, 329, 400, 100);
  rect ( 619, 302, 50, 10);
  
  fill ( 255, 255, 255, 50);
  rect ( 470, 323, 25, 10);
  
  fill ( 0, 0, 0, 100);
  rect ( 468, 329, 30, 10);
  
  fill ( 250, 0, 50);
  circle ( 470, 332, 8);
  circle ( 495, 332, 8);
  
  fill ( 255);
  circle ( 496, 332, 4);
  
  fill ( 255, 255, 255, 180);
  circle ( 552, 300, 5);
  circle ( 529, 325, 4);
  circle ( 651, 277, 4);
  
  fill ( 255, 255, 255);
  circle ( 791, 276, 10);
  
  
  // tierra marco
  
  fill ( 45, 34, 54);
  rect ( 724, 247, 100, 6);
  rect ( 748, 252, 100, 22); 
  rect ( 765, 289, 12, 40);
  rect ( 740, 299, 10, 30);
  
  fill ( 45, 34, 54, 70);
  rect ( 421, 344, 400, 100);
}
