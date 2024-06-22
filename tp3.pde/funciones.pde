void grilla ( int filas, int columnas){
  
  float cant = 10;
  
  for ( i = 0; i < cant; i++){
    for ( j = 0; j < cant; j++){
     
      color colorblanco;
      colorblanco = color (255);
      colorcubos = (0);
      
       if (mousePressed){
          colorblanco = color (10);;
        
        }
       
      int tam = 18;
      float distan = dist ( mouseX, mouseY, i*40, j*40);
      float tono = distan*255/dist (width, height, 0, 0);
      
      if ((i+j)%2==0){
        fill ( tono);
      } else {
        fill (colorblanco);
      }
     
     
      noStroke ();
      rect (i*40, j*40, 39, 39);
      
      
      if ((i+j)%2==0){
        fill ( colorblanco);
      } else {
        fill (tono);
      }
      
      //float d = dist (mouseX, mouseY, width/2, height/2);
      //float tama = map (mouseX, width/2, height/2, 0, 30);
      float tama = 20;
      
      float velocidad = 3.0;
      if (keyPressed == true && key == 'd'){
        tama = tama + 10;
      } 
      ellipse ( i*40+40/2, j*40+40/2, tama, tama);
    }
}
}


void keyPressed (){
  i = 0;
  j = 0;
}
