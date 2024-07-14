//https://youtu.be/AsDZ3Ya71N8

color colorfondo, colorcirculos, colorcubos;
PImage dibujo;
int posX, posY;
int i, j;

void setup (){
  size (800, 400);
  colorfondo = color (0);
  background (colorfondo);
  
}

void draw() {
  dibujo = loadImage ("dibujooptico.jpeg");
  image (dibujo, 0, 0);
  println (mouseX, mouseY);
  println (keyPressed);
  translate (400, 0);

  grilla (10);
  
  }  
  
  float black (float x2){
    
    x2 = 0;
    return x2;
    
  }
