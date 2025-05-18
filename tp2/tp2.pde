//Mendoza Hanna
//Comision 1
PImage FondoInicial, Logo, Fondo1, Fondo2, Fondo3, Fondo4, FondoFinal;
int pX, pY, anchoBoton, altoBoton; //boton
int posy, posY, ppy, ppY, ppymas; //efecto(?)
int segundos;
String creador, generos, personajes, empresa;
PFont Fuente;


void setup() {

  size(640, 480);

  //imagenes
  FondoInicial = loadImage("FondoInicial.jpg");
  Logo = loadImage("Logo.png");
  Fondo1 = loadImage("Fondo1.jpg");
  Fondo2 = loadImage("Fondo2.jpg");
  Fondo3 =  loadImage("Fondo3.jpg");
  Fondo4 = loadImage("Fondo4.jpg");
  FondoFinal = loadImage("FondoFinal.jpg");

  //textos
  creador = "Creador:\nAlex Hirsch";
  generos = "Generos:\nAventura\nMisterio\nHumor absurdo";
  personajes = "Personajes:\nDipper Pines\nMabel Pines\nStanley Pines\nSoos Ramirez\nWendy Corduroy\nStanford Pines\nBill Cipher";
  empresa = "Empresa:\nDisney\nTelevision\nAnimation";

  //fuente
  Fuente = loadFont("simsun.vlw");

  //segundos
  segundos = 0;

  //subir y bajar
  posy = 600;
  posY = 600;
  ppy = 600;
  ppY = 600;
  ppymas = -300;


  //boton
  pX = 0;
  pY = 190;
  anchoBoton = 160;
  altoBoton = 100;
}

void draw() {

  //tiempo
  if (frameCount % 60==0) {
    segundos ++;
  }


  //primera pantalla

  if (segundos<=3) {
    image(FondoInicial, 0, 0);
    image(Logo, 168, ppymas);
  }
  if (ppymas<0) {
    ppymas += 2;
  }


  //segunda pantalla

  if (segundos>3 && segundos <8) {
    image(Fondo1, 0, 0);
    fill(255);
    textFont(Fuente);
    text(creador, 10, ppy);
  }
  if (ppy>70 && segundos>4 && segundos<8) {
    ppy -= 3;
  }


  //tercera pantalla

  if (segundos>8 && segundos <12) {
    image(Fondo2, 0, 0);
    fill(255);
    textFont(Fuente);
    text(generos, 300, posy);
  }
  if (posy>50 && segundos>8 && segundos<12) {
    posy -= 3;
  }


  //cuarta pantalla

  if (segundos>12 && segundos <16) {
    image(Fondo3, 0, 0);
    fill(255);
    textFont(Fuente);
    text(personajes, 12, posY);
  }
  if (posY>63 && segundos>12 && segundos<16) {
    posY -= 5;
  }


  //quinta pantalla
  if (segundos>16 && segundos <20) {
    image(Fondo4, 0, 0);
    fill(255);
    textFont(Fuente);
    text(empresa, 110, ppY);
  }
  if (ppY>100 && segundos>16 && segundos <20) {
    ppY -= 3;
  }


  //pantalla final

  if (segundos>20) {
    image(FondoFinal, 0, 0);

    //boton
    noStroke();
    fill(243, 255, 82);
    rect(pX, pY, anchoBoton, altoBoton);
    fill(0);
    textSize(15);
    text("Press to restart", 15, 245);

    if (mouseX>pX && mouseX<pX+anchoBoton && mouseY>pY && mouseY<pY+altoBoton) {
      fill(169, 175, 54);
      rect(pX, pY, anchoBoton, altoBoton);
      fill(255);
      textSize(15);
      text("Press to restart", 15, 245);
    } else {
      fill(243, 255, 82);
    }
  }
}

void mousePressed() {

  if (mouseX>pX && mouseX<pX+anchoBoton && mouseY>pY && mouseY<pY+altoBoton) {
    segundos = 0;
    posy = 600;
    posY = 600;
    ppy = 600;
    ppY = 600;
    ppymas = -300;
  }
}
