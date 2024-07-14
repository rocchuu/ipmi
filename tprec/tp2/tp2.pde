PImage undertale;
PImage flowey;
PImage floweymalo;
PImage TobyFox;
PImage Personaje;
PImage ataque;
PImage finalneutral;
PImage finalpacifista;
PImage finalgenocida;
PImage perrito;
PImage corazon;
float posX, posY, tamaño;
float velX, velY;
float velocidad = 10;
String estado;
float d1 = dist ( mouseX, mouseY, 302, 240);
int r1 = 70 / 2;
int myFrameCount = 0;

void setup () {
  size ( 640 , 480); 
  background ( 0 );
  estado = "intro";
  posX = 210;
  posY = 510;
  tamaño = 200;
  velY= -0.4;
}

void draw () {
  
  println ( mouseX + "/" + mouseY);
  println ( frameCount/60);
  
  if ( frameCount/60 >= 0){ // intro del power
    estado = "intro";
    
    if ( estado.equals ("intro")){ //pantalla de inicio
      
      estado = "intro";
      myFrameCount = 0;
      undertale = loadImage ( "undertale.jpg" );
      image ( undertale, 0, 60);
     
      posY = posY + velY;
      
      flowey = loadImage ( "Flowey_Talk_normal (1).png");
      image ( flowey, posX, posY, tamaño, tamaño);
      
    }
  }
     
     else if (frameCount/60 >= 4) { //segunda pantalla
         
         estado = "pantalla 2";
         tamaño = tamaño + 900;
         
     if (estado.equals ("pantalla 2")){     
         background (0);
         TobyFox = loadImage ( "Toby Fox.jpg");
         image (TobyFox, 200, 110, 250, 250);
       }
     }
     if ( frameCount/60 >= 8){ //pagina Frisk
       estado = "pantalla 3"; }
       
       if (estado.equals ("pantalla 3")){
     
       background (0);
       Personaje = loadImage ( "Frisk.jpg");
       image ( Personaje, 50, 100, 540, 290);
       fill (255);
       textSize (16);
       text ( "En este juego controlas a un niño que se encuentra", 150, 70);
       text ( "en un lugar desconocido del cual busca escapar", 160, 90);
       }
       if ( frameCount/60 >= 11){ // Página método de pelea
       estado = "pantalla 4"; }
       
       if ( estado.equals ("pantalla 4")){
       
          background (0);
          fill (255);
          text ( "Este juego maneja un sistema de combate similar al de los", 140, 70);
          text ( "antiguos rpgs, mediante el uso de turnos donde, por cada uno", 135, 90);
          text ( "el jugador puede gastar solo una accion entre las cuales se encuentran", 110, 110);
          text ( "atacar, perdonar, curar y escapar", 205, 130);
          ataque = loadImage ( "Sistema de pelea.png");
          image ( ataque, 80, 150, 500, 300);
          
       }
       if ( frameCount/60 >= 14){ //decisiones que afectan al juego
         estado = "pantalla 5"; }
         
         if (estado.equals ("pantalla 5")){
       
         background (0);
         fill (255);
         textSize (18);
         text ( "Lo interesante de este juego es que tus decisiones", 140, 200);
         text ( "repercuten luego de cada muerte. Si por ejemplo matas", 130, 220);
         text ( "a un personaje y reseteas la partida, es probable que te lo recuerden", 85, 240);
      
       }
       if ( frameCount/60 >= 17){ //tipos de finales
        estado = "pantalla 6";}
        
        if (estado.equals ("pantalla 6")){
       
        background (0);
        fill (250);
        textSize ( 20);
        text ( "En este juego hay tres tipos de finales", 160, 200);
        text ( "los cuales son:", 245, 225);
        
       }
       if ( frameCount/60 >= 20){ //Final neutral
        estado = "pantalla 7";}
        
        if ( estado.equals ("pantalla 7")){
        
        background (0);
        textSize ( 30);
        fill ( 255, 234, 111);
        text ( "FINAL NEUTRAL", 220, 50);
        textSize ( 16);
        fill ( 255);
        text ( "Este es el final mas facil de sacar, puesto que", 180, 75);
        text ( "se saca simplemente terminando el juego", 180, 95);   
        finalneutral = loadImage ( "Final neutral.jpg");
        image ( finalneutral, 80, 110, 500, 300);
       
      }
      if ( frameCount/60 >= 23){ //final pacifista
        estado = "pantalla 8";}
        
        if (estado.equals ("pantalla 8")){
        background (0);
        textSize ( 30);
        fill (102, 193, 252);
        text ( "FINAL PACIFISTA", 210, 50);
        textSize ( 16);
        fill ( 255);
        text ( "Para sacar este final debes pasarte el juego", 170, 75);
        text ( "sin matar a ningun monstruo.", 210, 95); 
        text ( "Lo dificl de esto es que no ganas experiencia,", 160, 115);
        text ( "por lo que se vuelve mas complicado avanzar", 165, 135);
        finalpacifista = loadImage ( "Final Pacifista.png");
        image ( finalpacifista, 65, 150, 520, 290);
      
      }
      if ( frameCount/60 >= 26){ //final genocida
        estado = "pantalla 9";}
        
        if (estado.equals ("pantalla 9")){
        background (0);
        textSize ( 30);
        fill (200, 0, 0);
        text ( "FINAL GENOCIDA", 210, 50);
        textSize ( 16);
        fill ( 255);
        text ( "Para sacar este final debes pasarte el juego", 170, 75);
        text ( "matando a todo personaje que te encuentres.", 175, 95);
        text ( "El juego se divide por etapas y en cada una debes matar a un", 125, 115);
        text ( "cierto numero de personajes, por lo que se recomienda ver una guia", 100, 135);
        finalgenocida = loadImage ( "Final Genocida.jpg");
        image ( finalgenocida, 120, 165, 400, 300);
        
      }
      if (frameCount/60 >= 29){ //pantalla final
      
        estado = "pantalla final";}
        
        if (estado.equals ("pantalla final")){
        background (0);
        textSize ( 20);
        text ( "Eso es todo", 252, 135);
        text ( "¡Gracias por ver!", 235, 155);
        textSize ( 16);
        text ( "(presiona en el corazon para volver al inicio)", 170, 175);
        perrito = loadImage ( "Perrito despedida.jpg");
        image ( perrito, 320, 350, 200, 200);
        corazon = loadImage ( "corazon.png");
        image ( corazon, 250, 200, 115, 90);
        textSize ( 12);
        text( "Z", 365, 442);
        text( "Z", 352, 426);
        text( "Z", 372, 412);
        
        fill ( 0, 0, 0, 0);
        noStroke ();
        circle ( 302, 240, 70);  
        
      
     }
    }    
    void mousePressed (){
     if ( mouseX >= 279 && mouseY <= 333 && mouseY >= 218 && mouseY <= 270 && frameCount/60 >= 29){
       frameCount = 0;
       size ( 640 , 480); 
       background ( 0 );
       estado = "intro";
       posX = 220;
       posY = 500;
       tamaño = 200;
       velY = -0.4;
     }
    }
