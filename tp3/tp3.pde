//Mendoza Hanna
//Comision 1
//https://youtu.be/TX6i1m-iI18

PImage imagen;

//400(pantalla) / 14(cantidad de circulos) =28.5
//28.5=tamano  de cada circulo, entonces 28.5 / 2 = 14.2 que es el radio del circulo
//el for tiene que arrancar en 14.2, 14.2 asi entra el circulo completo en la pantalla

int espacio = 0;
boolean cambio = true;
float cambiocolor = 255, cambiocolorr = 0;


void setup() {
  size(800, 400);
  imagen = loadImage("imagen.png");
  noStroke();
}

void draw() {
  background(cambiocolor);
  image(imagen, 0, 0, 400, 400);


  circulosnegros(28.5, 400);
  circulosblancos(28.5, 400, 28.5, 0, 282, 5);
  
  if (cambio) {
    cambiocolor = 255;
    cambiocolorr = 0;
  }

  if (!cambio) {
    cambiocolor = 0;
    cambiocolorr = 255;
  }
}


void keyPressed() {
  if (key==' ') { //si tocas espacio se le suma uno a la variable espacio que vale 0
    espacio++;
    if (espacio==3) { //si tocas el espacio tres veces su valor vuelve a ser 0 (se reinicia)
      espacio=0;
    }
  }
}
void mousePressed() {
  cambio = !cambio;
  //al tocar cambio es falso entonces se cumple el if donde cambiocolor y cambiocolorr invierten sus colores
}
