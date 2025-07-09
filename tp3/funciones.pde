//Funciones que NO retornan valor con PARAMETOS
void dibujo(int cantidad, int tamano,color c11,color c22 ) {
  for (int x = 0; x < cantidad; x++) {
    for (int y = 0; y < cantidad; y++) {

      if ((x + y) % 2 == 0) {            //intercalar
        fill(c11);                  
        circle( x * tamano + tamano / 2, y * tamano + tamano / 2, tamano);
      } else {
        fill(c22);                
        rect(x*tamano, y*tamano, tamano, tamano);
      }
    }
  }
}

void invertirColor(boolean fondoBoN) {
  if (fondoBoN) {
    fondo = color (0);      
    c1= color(240);
    c2= color(240);
  } else {
    fondo = color (240);    
    c1= color(0);
    c2= color(0);
  }
}
//Funciones que NO retornan valor sin PARAMETOS
void resetValores() {
  cant = 40;
  tam = width / cant;
  fondo1 = false;
  invertirColor(fondo1);
}

// Función con PARAMETROS y return
color combcolores(float x, float y) {
  float r = map(x, 0, width / 2, 0, 70);
  float g = map(y, 0, height, 0, 160);
  float b = map(y, 0, height, 50, 147);
  return color(r,g,b); // devuelve el color creado
}
