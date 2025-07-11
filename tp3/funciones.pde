void circulosnegros(float diam, int ubic) {
  fill(cambiocolorr);
  for (float x = diam/2; x <= width - diam/2; x += diam) {
    for (float y = diam/2; y <= height - diam/2; y += diam) {
      ellipse(x+ubic, y, diam, diam);
    }
  }
}
void circulosblancos(float diam, int ubic, float diamdos, int cerca, int lejos, int circulominimo) {
  fill(cambiocolor);
  for (float x = diam/2; x <= width - diam/2; x += diam) {
    for (float y = diam/2; y <= height - diam/2; y += diam) {
      float diagonal = (x+y)/2;
      float distancia = dist(x, y, diagonal, diagonal);
      //si tocas una vez el espacio, la variable espacio cambia a 1 y se da esta condicion
      if (espacio == 1) {
        distancia = dist(mouseX-ubic, mouseY, diagonal, diagonal);
      }
      //si tocas dos veces el espacio, la variable espacio cambia a 2 y se da esta condicion
      if (espacio == 2) {
        distancia = dist(mouseX-ubic, mouseY, x, y);
      }
      diamdos=map(distancia, cerca, lejos, circulominimo, diam);
      ellipse(x+ubic, y, diamdos, diamdos);
    }
  }
}


//Note que el error era porque se le asignaban dos valores al valor diam(tamaño) por lo que entendi que deberia buscar otra manera
//de hacer el for sin alterar el diam,por lo que use "radio"(que es la mitad del circulo o sea la mitad de diam) *2, pero como 14,2
//no es exactamente la mitad de 28,5 quedaba un poco movido entonces cambie el 28,5 por 28,4 en ambos circulos y a pesar de que
//quedo centrado, quedan mal las proporciones, lo deje igual comentado para que lo verifique

//void circulosblancos(float diam, float radio, int ubic, int cerca, int lejos, int circulominimo) {
//  fill(cambiocolor);
//  for (float x = radio; x <= width - radio; x += radio*2) {
//    for (float y = radio; y <= height - radio; y += radio*2) {
//      float diagonal = (x+y)/2;
//      float distancia = dist(x, y, diagonal, diagonal);
//      diam=map(distancia, cerca, lejos, circulominimo, radio*2);
//      ellipse(x+ubic, y, diam, diam);
//    }
//  }
//}
