PImage miImagen;

void setup() {
  size(800, 400);
 background(155,137,75);
miImagen =loadImage("Morty.jpg");

}

void draw() {
image (miImagen,0,0);

fill(118,77,37);
quad (510,0,640,0,540,20,510,20); //cuadro
fill(100);
triangle(520,6,561,0,520,0);//cuadro
fill(80,49,20);
quad (515,19,605,0,637,0,539,20);//cuadro

fill(54,25,8);
rect(700,0,70,167);//marco de la puerta
fill(100,54,16);
rect(700,0,13,167);//marco de la puerta

fill(58,69,82);
rect(771,0,28,167);//puerta?

fill(134,83,35);
quad (400,75,700,37,700,167,400,167);//madera pared
line(400,85,700,58);//linea pared

fill(121,32,0);
rect (400,175,800,400);//sillon

noStroke();
fill(149,65,0);
rect (401,169,800,25);//parte superior del sillon
fill(82,19,6,150);
rect (400,242,800,400);//sombra atras algo asi

fill(232,216,91);
stroke(0);
ellipse(613,400,193,360);//cuerpo
strokeWeight(1);
fill(#BFBFBF);
rect (400,168,73,9);


strokeWeight(1);
fill(155,91,28);
ellipse(590,150,255,240);//pelo

fill(242,195,152);
strokeWeight(1);
circle(710,210,45);//oreja derecha
ellipse(610,183,228,235);//cara con borde
circle(512,228,45);//oreja izq
noStroke();
ellipse(610,183,218,218);//cara sin borde

fill(242,195,152);
strokeWeight(1);
stroke(0);
line(619,192,630,200);//nariz
line(630,178,639,182);//nariz
circle(634,191,19);//nariz
noStroke();
quad(628,178,635,181,628,197,619,192);//nariz

strokeWeight(1);
stroke(0);
fill(255);
ellipse(572,157,75,77);//ojo izq
fill(0);
circle(585,150,7);//ojo izq punto

strokeWeight(1);
stroke(0);
fill(255);
ellipse(674,147,72,75);//ojo derecho
fill(0);
circle(680,143,7);//ojo derecho punto

fill(80,9,2);
ellipse(632,250,38,26);//boca
fill(242,195,152);
noStroke();
ellipse(635,259,53,26);//boca

stroke(0);
line(545,111,592,88);//ceja izq
line(644,88,684,100);//ceja derecha


strokeWeight(2);


fill(98,23,8);
noStroke();
rect(513,320,10,80);//para acomodar los brazos
quad (700,320,715,320,715,400,707,400);//para acomodar los brazos
stroke(0);
line(522,336,522,400);//para acomodar los brazos
line(700,324,707,400);//para acomodar los brazos
strokeWeight(1);
line(562,343,562,400);//brazos linea izq adentro
line(684,348,686,400);//brazos linea der adentro

stroke(0);
strokeWeight(2);
}
