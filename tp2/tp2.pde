//LUCIA SZUMIK comision #2
PImage Portada, fondo, jaque,piezas, alfil, caballo, dama, peon, rey, torre;
String  ESTADO,texto1, texto2a, texto2b, textalf, textcab, textorr, pant2,pant3,textpeo, textdam,textrey;
color gris = color(214, 205, 201);
color marron =color(124, 30, 6);
color cremita =color (232,227,176);
float posX, posY, alpha;
int mov,mov1,mov2,mov3,mov5,mov6, actual, ll;
int fuera,fuera2;
PFont miFuente;

void setup() {
  size( 640, 480 );
  
  //asignacoin de variables
  ESTADO= "inico";
  posX = 0;
  posY = 0;
  mov = 0;
  actual = 1;
  fuera = -200;
  ll=0;
  mov1=0;
  mov2=0;

  //IMAGENES
  Portada = loadImage("Ajedrezrey.jpg");

  fondo = loadImage("images.png");
  jaque = loadImage("jaque.jpg");

  piezas = loadImage("download.jpg");
  torre = loadImage ("torre.jpg");
  alfil = loadImage("alfil.jpg");
  caballo = loadImage("caballo.jpg");

  peon = loadImage("peon.jpg");
  rey = loadImage("rey.jpg");
  dama = loadImage("dama.jpg");

  //TEXTOS
   miFuente = loadFont ("Cambria-Bold-32.vlw");
   textFont(miFuente,32);
  texto1 = ("El ajedrez es uno de los juegos más antiguos. \n Tiene un carácter intelectual y cultural,\n que combina elementos  del deporte,\n el razonamiento científico y el arte");
 
  texto2a = ("Es un juego de tablero estategico \n en el que se enfrentan dos jugadores.\n \n Cada uno tiene 16 piezas con distintos\n valores que pueden mover siguiendo \n ciertas reglas y el obetivo final del juego \n consiste en derrocar al rey \n del oponente");
  texto2b = ("El tablero de ajedrez es un \ncuadrado subdividido en sesenta y \ncuatro casillas iguales (8×8), \ntambién cuadradas, alternativamente \nde color claro y de color oscuro.");
 
  pant2 = (" EL CABALLO                                  EL ALFIL                                          LA TORRE");
   textcab = ("Se caracteriza por la \n habildad de saltar sobre \n otras piezas, para llegar \n a su destino.Se mueve en \n forma de 'L' ,es decir, dos \n casillas en una direccion \n (horizontal u  vertical) \n y luego una casilla \n perpendicular a esa \n direccion");
 textalf = ("Cada jugador cuenta con \n dos alfiles al iniciar la \npartida.\nSe mueve en diagonal \n no puede saltar \n piezas intervinientes,\n y captura tomando el lugar \n ocupado  por la pieza \n adversaria.");
 textorr = ("Se mueve horizontal y \n verticalmente a lo largo \n de cualquier número de \n casillas, siempre que no haya \n ninguna pieza entre ella y \n su destino.");

 pant3 = (" EL PEON                                  LA DAMA                               EL REY");
   textpeo = ("cada jugador tiene ocho \n peones, dispuestos en las filas \n  2 y 7, por delante del resto \n  de piezas. Se mueve \n verticalmente por la columna \n en la que se encuentra, \n sin poder retroceder. \n En el primer movimiento, \n desde el punto inicial, \n pueden avanzar dos escaques \n y, a partir de allí, de uno en uno. ");
 textdam = ("Es la pieza mayor del juego. \n Se puede mover en \n forma vertical, horizontal o \n diagonalmente en \n cualquier número de escaques.");
 textrey = ("Es la pieza mas importante. \n Se mueve para todos lados, \n de a una casilla por vez. Puede \n hacerlo a todas las casillas\n que están a su lado, salvo que \n estén ocupadas por una pieza \n del mismo color o la casilla \n esté atacada por el \n contrario. ");
}

void draw() {
println (mouseX, mouseY,fuera,frameCount);
  if (actual == 1) {

    //   PANTALLA 1
    if (mov < 40) {
      mov++;
    }
    background (gris);
    image (Portada, 0, 50, mov + 640, mov+480); //0, 50, 640, 480
    fill (255);

    textSize (20);
    text (texto1, 19, (posY+65)+mov); //19,(120)

    fill (marron);
    textSize (55); //tamaño del texto
    text ("EL AJEDREZ", width/4, 47);
  }

  //tiempo
  if (frameCount ==  60*1  ) { 
    actual = 2;
  }
  //------------------------------------ PANTALLA 2
  if ( actual == 2 ) {
 background (marron);
  fill (255);
    textSize (17);
  if ( mov1 < 230) { mov1++;}
    text(texto2b, 335, mov1+100); 
     fill (marron);
    noStroke();
    rect (330, 0, 350, 300);
    
    fill (255);
    textSize (17);
  if (fuera < 15) {  fuera += 1;  }
    text( texto2a, fuera, 50);
    
  if (mov5 <= 240) { mov5 = mov5+ 1;}
  if (mov3 < 210) { mov3 = mov3 + 1;   }
   image (jaque, 375, 15,  mov5, mov5  );
   image (fondo, 15, 250, mov3+77, mov3);
  }
 //tiempo
  if (frameCount ==  60*6) {
    actual = 3; }
    //---------------------------------------------PANTALLA 3
     if (actual == 3) {
  background(marron); 
 
 image (piezas,0,0,640,480);
  if (alpha < 255) {alpha += 3; }
  fill(250,73,3, alpha);  // Texto negro con transparencia
  textSize(23);
  text("Al principio del juego cada jugador tiene dieciséis piezas: \n    un rey, una dama, dos alfiles, dos caballos, dos torres \n                                    y ocho peones.", 10, 45);
  }                    
   if (frameCount ==  60*8) {
    actual = 4; }
   
    //-------- -------------------PANTALLA 4
  if ( actual == 4 ) {
   background (cremita);
  fill (marron);
    textSize (13);
  
    if (mov2 < 210) { mov2++;}
    text(textcab, 17, 500 - mov2+1);
    text( textalf, 225,500 - mov2+1); 
    text (textorr,445,500 - mov2+1);
     
    fill (cremita);
    noStroke();
    image (caballo, 15, 15, 175,200); 
    image (alfil, 225, 15, 175, 200 ); 
    image (torre,445, 15, 175, 200 ); 
        ll= frameCount*3; 
   fill (0);
    textSize (13);
    text (pant2,20,260);
      
      fill (cremita);
    noStroke();
    rect (-1500+ll, 230 , 640, 40);
  }
    // manejo del tiempo
  if (frameCount == (60*13) ) {
    actual = 5;
  }
    //---------------------------PANTALLA 5
   else if ( actual == 5 ) {
   background (cremita);
  fill (marron);
   textSize (13);
    if (mov6 < 210) { mov6++;}
    text(textpeo, 17, 500 - mov6+1);
    text( textdam, 230,500 - mov6+1); 
    text (textrey,440,500 - mov6+1);
     
    image (peon, 15, 15, 175,200); 
    image (dama, 230, 15, 175, 200 ); 
    image (rey,450, 15, 175, 200 ); 
        ll= frameCount*3; 
   fill (0);
    textSize (15);
    text (pant3,15,260);
    
     if ( fuera < 2){  fuera += 1;}
    fuera=-10;
   
      fill (cremita);
    noStroke();
    rect (-2500+ll, 230 , 640, 40);
   }
   
   if(frameCount == (60*20) ){
   actual = 6;      
//---------------------------------------PANTALLA 6
     background(cremita);
     
     fill (255);
     strokeWeight(1);
     rect(320, 370, 200,50); 
     
     fill (marron);
     strokeWeight(5);
     textSize(60);
     text ("AJEDREZ",57,90);
     fill (0);
     textSize(30);
     text ("Reiniciar",360, 400);
    }
}
void mousePressed () {
 if ( mouseX > 320 && mouseX < 320+200 && mouseY > 370 && mouseY < 370+50 ) {
actual = 1;  
mov = 0;   
posX = 0;  
posY = 0;  
frameCount = 0; 
ESTADO = "inicio";
   }   
}
