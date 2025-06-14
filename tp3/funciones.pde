//Funciones que NO retornan valor
void dibujo() {
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {

      if ((x + y) % 2 == 0) {            //intercalar
        fill(c1);                  
        circle( x * tam + tam / 2, y * tam + tam / 2, tam);
      } else {
        fill(c2);                
        rect(x*tam, y*tam, tam, tam);
      }
    }
  }
}

void invertirColor() {
  if (fondo1) {
    fondo = color (0);      
    c1= color(240);
    c2= color(240);
  } else {
    fondo = color (240);    
    c1= color(0);
    c2= color(0);
  }
}

//Funciones que SI retornan valor (para reiniciar);
color FondoInicial() {
  return color (240);
}
color figuras() {
  return color (0);
}
color cantidad() {
  return 40;
}
int tamano (int cant) {
  return width/ cant;
}
