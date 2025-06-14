/*Lucia Szumk Com2
 VIDEO:   link copiado:     https://www.youtube.com/watch?v=zrsirF9tAXU
          link compartido:  https://youtu.be/zrsirF9tAXU?si=P1jQojoTFzHI5Zdm
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
  dibujo();               //
  popMatrix();
  image(opArt, 0, 0, 400, 400);
  println(mouseX, mouseY, fondo1);
}
void mouseDragged() {
  // condicional para el uso del mouse solo del lado derecho
  if (mouseX> width/2 && dist (600, 200, mouseX, mouseY)<=200) {
    float r1 = map(mouseX, 0, width/2, 0, 70);
    float g1 = map(mouseY, 0, height, 0, 190);
    float r2 = map(mouseY, 0, height, 80, 187);
    float g2 = map(mouseX, 0, width/2, 3, 150);

    c1 = color(g1, r1, r2);  // color circulos
    c2 = color(r2, r2, g2);  // color cuadrados
  }
}
void keyPressed() {
  if  (key == 'i'|| key == 'I') { //cambio fondo negro/blanco
    fondo1 = !fondo1;
    invertirColor();
  }
  if (keyCode == RIGHT && cant < 80) {  //sumo
    cant++ ;
    tam  = width/ cant;
  } else if (keyCode == LEFT && cant > 4) { //resto
    cant--;
    tam  = width/ cant;
  }
  if  (key == ' ') { //restablecer  valores
    fondo = FondoInicial();
    c1 = figuras();
    c2 = figuras();
    cant = cantidad();
    tam = tamano(cant);
  } 
}
