//Mendoza Hanna
//Comision 1
//Limk
PImage imagen;

//400(pantalla) / 14(cantidad de circulos) =28.5
//28.5=tamano  de cada circulo, entonces 28.5 / 2 = 14.2 que es el radio del circulo
//el for tiene que arrancar en 14.2, 14.2 asi entra el circulo completo en la pantalla
float tam = 28.5;
float radiocirculo = 14.2;
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


  //circulos negros
circulosnegros();


  //circulos blancos
  for (float x = radiocirculo; x <= width - radiocirculo; x += tam) {
    for (float y = radiocirculo; y <= height - radiocirculo; y += tam) {

      //x+y/2 seria 414.2+414.2/2 =414.2, va sumando de a 14,2 formando como una linea de esquina a esquina
      float diagonal = (x+y)/2;

      //distancia entre el centro del circulo y la diagonal
      float distancia = dist(x, y, diagonal, diagonal);

      //si tocas una vez el espacio, la variable espacio cambia a 1 y se da esta condicion
      if (espacio == 1) {
        distancia = dist(mouseX-400, mouseY, diagonal, diagonal);
      }

      //si tocas dos veces el espacio, la variable espacio cambia a 2 y se da esta condicion
      if (espacio == 2) {
        distancia = dist(mouseX-400, mouseY, x, y);
      }
      //si tocas 3 veces vuelve a 0, su valor inicial

      //map hace que mientras mas cerca mas chiquitos
      //distancia minima y maxima respecto a la diagonal, tamano minimo y maximo que pueden tener los circulos
      float tam = map(distancia, 0, 282, 5, 28.5);

      if (cambio) {
        cambiocolor = 255;
        cambiocolorr = 0;
      }

      if (!cambio) {
        cambiocolor = 0;
        cambiocolorr = 255;
      }
      //se invierten los colores, lo negro pasa a blanco y lo blanco a negro

      fill(cambiocolor);
      ellipse(x+400, y, tam, tam);
    }
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
//las anotaciones son para no marearme y entrar en la locura
