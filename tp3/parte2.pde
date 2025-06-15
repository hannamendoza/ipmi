void circulosnegros(){
    fill(cambiocolorr);
    for (float x = radiocirculo; x <= width - radiocirculo; x += tam) {
    for (float y = radiocirculo; y <= height - radiocirculo; y += tam) {
      ellipse(x+400, y, tam, tam);
    }
  }
}
