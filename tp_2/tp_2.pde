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
  posX = 220;
  posY = 500;
  tamaño = 200;
  velY = -1;
  
}

void draw () {
  

  println ( mouseX + "/" + mouseY);
  println ( frameCount/60);
  
  if ( frameCount/60 < 4 && estado == "intro"){ // intro del power
    

    if ( frameCount/60 >= 0 && frameCount/60 < 3){ //pantalla de inicio
      
      myFrameCount = 0;
      undertale = loadImage ( "undertale.jpg" );
     image ( undertale, 0, 60);
     
      posY = posY + velY;
      
      flowey = loadImage ( "Flowey_Talk_normal (1).png");
      image ( flowey, posX, posY, tamaño, tamaño);
      
    }else if ( frameCount/60 >= 3) { //presiona e
      textSize ( 16);
      text (" manten presiondo e", 240, 310);   
    }
  }
     
     else if (keyPressed) { //segunda pantalla
       if (key == 'e'){
         
         myFrameCount = 1;
         tamaño = tamaño + 900;
         
         background (0);
         floweymalo = loadImage ( "Flowey the flower.jpg");
         image ( floweymalo, 0, 300, tamaño, 200);
         
         textSize ( 16);
         text ( "Este juego fue desarrollado en su totalidad", 180, 60);
         text ( "por un chico llamado Toby Fox", 220, 80);
         
         TobyFox = loadImage ( "Toby Fox.jpg");
         image (TobyFox, 200, 110, 250, 250);
       }
     }
     if ( frameCount/60 >= 8){ //pagina Frisk
       background (0);
       Personaje = loadImage ( "Frisk.jpg");
       image ( Personaje, 50, 100, 540, 290);
       text ( "En este juego controlas a un niño que se encuentra", 160, 70);
       text ( "en un lugar desconocido del cual busca escapar", 170, 90);
       myFrameCount = 2;
       
       if ( frameCount/60 >= 11){ // Página método de pelea
          background (0);
          text ( "Este juego maneja un sistema de combate similar al de los", 130, 70);
          text ( "antiguos rpgs, mediante el uso de turnos donde, por cada uno", 125, 90);
          text ( "el jugador puede gastar solo una accion entre las cuales se encuentran", 100, 110);
          text ( "atacar, perdonar, curar y escapar", 210, 130);
          ataque = loadImage ( "Sistema de pelea.png");
          image ( ataque, 80, 150, 500, 300);
          
          myFrameCount = 3;
       }
       if ( frameCount/60 >= 14){ //decisiones que afectan al juego
         background (0);
         text ( "Lo interesante de este juego es que tus decisiones", 160, 200);
         text ( "repercuten luego de cada muerte. Si por ejemplo matas", 150, 220);
         text ( "a un personaje y reseteas la partida, es probable que te lo recuerden", 110, 240);
         
         myFrameCount = 4;
       }
       if ( frameCount/60 >= 17){ //tipos de finales
        background (0);
        textSize ( 20);
        text ( "En este juego hay tres tipos de finales", 160, 200);
        text ( "los cuales son:", 245, 225);
        
        myFrameCount = 5;
       }
       if ( frameCount/60 >= 20){ //Final neutral
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
        
        myFrameCount = 6;
      }
      if ( frameCount/60 >= 23){ //final pacifista
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
        
        myFrameCount = 7;
      }
      if ( frameCount/60 >= 26){ //final genocida
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
        
        myFrameCount = 8;
      }
      if (frameCount/60 >= 29){ //pantalla final
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
        
        myFrameCount = 9;
      
     }
     
} 
    }    
    void mousePressed (){
     if ( mouseX >= 279 && mouseY <= 333 && mouseY >= 218 && mouseY <= 270 && frameCount/60 >= 29 ){
      myFrameCount = 0;
     }
    }
