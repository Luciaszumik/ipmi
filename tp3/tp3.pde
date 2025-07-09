/*Lucia Szumik Com2
 VIDEO:  https://youtu.be/TnUQmIBj3Ts?si=LbYz5Qa9U0gA8p_E
 */
PImage opArt;
color c1, c2, fondo;
int tam, cant;
boolean fondo1; //blanco o negro

void setup() {
  size(800, 400);
  opArt = loadImage("F_28.jpg");
  cant = 40; //cant figuras
  tam = width / cant; //ttamao de cada figura
  fondo  = 240;
  fondo1 = false; 
}
void draw() {
  background(fondo);
  noStroke();
  pushMatrix();
  translate(400, 0);
  
  dibujo(cant,tam,c1,c2);               //
  
  popMatrix();
  image(opArt, 0, 0, 400, 400);
  println(mouseX, mouseY, fondo1);
}



 void mouseDragged() {
  if (mouseX > width / 2 && dist(600, 200, mouseX, mouseY) <= 200) {
    c1 = combcolores(mouseX, mouseY);       // color círculos
    c2 = combcolores(mouseY, mouseX);       // color cuadrados
  }
}

void keyPressed() {
  if  (key == 'i'|| key == 'I') { //cambio fondo negro/blanco
    fondo1 = !fondo1;
    invertirColor(fondo1);
  }
  if (keyCode == RIGHT && cant < 80) {  //sumo
    cant++ ;
    tam  = width/ cant;
  } else if (keyCode == LEFT && cant > 4) { //resto
    cant--;
    tam  = width/ cant;
  }
  if  (key == ' ') { //restablecer  valores
resetValores();
  } 
}
