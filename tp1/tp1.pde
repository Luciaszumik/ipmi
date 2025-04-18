PImage peluches;
void setup(){ 
//fullScreen();
size(800, 400); // tamaño de la ventana
background(208); // color de fondo
peluches = loadImage("sullivan.jpg"); //cargo la imagen
}

void draw (){
image (peluches, 0, 0, 400, 400);
 noStroke(); //color de borde
 colorMode(HSB, 360,100,100,100);
 
 //mesa
 fill(20,50,42); //5
 rect (400,240,400,160); // marron p. de abbajp
 fill(20,50,38); //4
 rect (400,240,400,100);
 fill(20,50,35); //3
 rect (400,240,400,84);
 fill(20,50,37); //2
 rect (400,240,400,70); 
 fill(20,50,40); //1
 rect (400,240,400,40); 
 
 //pierna izq.
 fill(190,62,88); 
 quad(525,252,508,317,545,335,580,282);
 //pata:
 fill(184,64,77);//s.pata190,62,80
 circle (516,329,70); //sombra
 fill(190,62,88);
 circle (516,330,70); 
 
 //pierna derec.:
 //sombra f
 fill (190,57,20,45);  // grado,sat,bri,transp
 quad(637,278,663,314,694,302,683,253); //sombra 
 fill (190,62,88); 
 quad(630,278,658,336,699,324,681,255);
 //pata:
 fill(184,64,77);//gris claro
triangle(651,323,660,301,647,315); //sombra de la pata
fill(184,64,77);//
circle (687,323,70); //contono
 fill(190,62,88);
 circle (687,325,70);
 
 //Brazos
 triangle(533,190,483,227,521,248);//I
 triangle(483,227,496,260,536,249);
 triangle(496,260,529,257,555,230);
 
 fill(190,62,88);
  triangle(672,196,716,224,684,252);//D
 triangle(677,254,713,260,716,224);
 fill(190,62,83,87); //sombra clara (((((
quad(681,202,670,200,714,252,715,227);
 
 stroke (190,62,80);
 strokeWeight(5);
line(685,203,716,224);
  noStroke();
  
  //cuerpo
 fill(190,62,88);
 rect(522,180,163,120,65); 
 
 //cuerno
noStroke();
fill(40,78,18);
triangle(551,92,571,75,551,63); //I
triangle(551,63,560,73,574,46);
 stroke(190,62,53);//sombra oscura
 line(642,62,647,81);
 noStroke();
 fill(40,78,18);
triangle(625,71,648,84,645,61);//D
triangle(645,61,633,68,620,45);

  //cara
fill (190,62,53); //fondo oscuro xxxx
 circle(610,140,140);
 fill (190,62,80); //fondo profundidad
 circle(608,140,140);
  fill (190,62,88); 
 circle(604,138,140);
  fill (190,62,53); //fondo oscuro
 rect(521,135,180,69,60);
triangle(687,201,690,198,719,222);
 //----
quad(716,220,713,260,715,263,720,225); //brazo lateral
//----
  fill (190,62,80); //fondo profundidad
 rect(522,130,175,80,60);
 fill (190,62,88); //princpal
 rect(518,128,173,80,60); 
 
//ojos
fill(0,0,100);//izquierdo
ellipse(589,125,30,35);
fill(195,62,78);
circle(589,126,16);
fill(100,100,0);
circle(589,126,9);
fill(0,0,100);//derecho
ellipse(614,125,30,35);
fill(195,62,78);//Turq
circle(614,126,16); 
fill(100,100,0);
circle(614,126,9);

//nariz
fill(165,100,80);
ellipse(602,145,40,25);

//ceja
strokeWeight(1);
stroke(199,64,89);
fill (190,62,90);
quad(559,97,560,107,595,102,594,94);//I
quad(610,94,608,103,644,107,645,99); //D

//sonrisa
strokeWeight(3);
stroke(207,78,80);
fill(190,62,88);
bezier(538,155,567,200,642,198,667,140);
line(660,137,672,143);
line(541,150,531,157);
noStroke();
fill(0,0,100);
triangle(636,175,641,173,634,163);
triangle(645,169,649,166,640,158);

//-----manchas
fill(245,65,65);
ellipse(650,253,10,16);
ellipse(645,255,14,10);
ellipse(701,239,7,15);//
ellipse(698,241,12,5);
triangle(701,248,693,242,699,240);
ellipse(610,289,13,9);//
ellipse(607,285,9,14);
ellipse(606,287,15,9);
ellipse(605,217,14,16);//
triangle(590,209,604,209,600,219);
ellipse(546,266,14,16);//
ellipse(544,270,16,14);
triangle(703,356,713,349,705,333);
ellipse(669,316,5,9);//
ellipse(667,320,7,11);
//----sombra---
fill(190,62,80,80);
triangle(639,300,644,306,658,285);//somra
//---
fill(245,65,65);
triangle(637,299,648,292,642,306);
//---
fill(190,62,83,87);//claro
triangle(569,298,566,304,556,292);
quad(520,269,520,272,547,295,547,292);
//---
fill(245,65,65);
quad(531,283,534,293,547,297,549,294);//
ellipse(522,220,10,16);//
ellipse(517,224,13,9);
ellipse(504,308,5,9);
ellipse(525,324,10,7);

//costura
strokeWeight(2);
stroke(184,64,77);
fill(190,62,88);
bezier(483,340,505,321,529,325,548,341);
bezier(654,337,661,325,702,308,720,323);

//sombra de la mejilla
stroke(190,56,75,50);
bezier(533,134,552,134,562,135,582,140);
bezier(623,140,630,137,659,131,672,133);
noFill();

//lineas brazo=izqierdo
strokeWeight(1);
line(525,196,483,226); //contorno
line(483,226,495,257); //contorno
bezier(495,259,526,259,536,259,540,214);

 strokeWeight(2);//linea de sombras izquierdo
 stroke(190,62,77,50);
line(540,288,555,299); //abajo
triangle(529,268,529,261,533,275);//costado
fill(190,62,77,50);
quad(540,210,534,249,527,255,538,251);// costado interno

////lineas brazo=derecho
line(712,260,683,255);
bezier(683,255,665,248,657,220,654,219);

//sombra
//fill(190,62,83,87);//claro
triangle(681,263,684,257,662,236);//sombra derecho brazo
triangle(684,269,686,276,660,286);// pierna pliegue

// linea divisoria
stroke (0); //color borde
strokeWeight(2); // (grosor) 
line(400, 0, 400, 400);
}
void mouseMoved(){
println (mouseX,0, mouseY,0);
}
