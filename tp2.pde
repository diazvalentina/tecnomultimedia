PImage ground, pantallaUno, playClick, pantallaDos;
PFont titulo, autores, cast;
int posY, posY2, posY3;
int posY4, posY5, posY6, posY7;
int creditos = 0;
boolean activar = false;
boolean activar2 = false;

void setup(){
  size(550,350); 
  posY = 360;
  posY2 = 425;
  posY3 = 460;
  posY4 = 765;
  posY5 = 815;
  posY6 = 865;
  posY7 = 915;
}

void draw(){ 
  pantallaUno = loadImage("pantalla1.png");
  image(pantallaUno,0,0,550,350);
  
  if(activar == true){
  playClick = loadImage("play.png");
  image(playClick,0,0,550,350);
  titulo = createFont("Germanica.ttf",30);
  textFont(titulo);
  text("Los músicos de Bremen",85,posY);
  posY--;
  autores = createFont("Germanica.ttf",28);
    textFont(autores);
    text("Jacob & Wilhelm,",120,posY2);
    posY2--;
    text("Los Hermanos Grimm",100,posY3);
    posY3--;
  }
  
  if(posY >= 10 && creditos < 1){
    posY-=2;
    posY2-=2;
    posY3-=2;
  }
  
   if(keyPressed == true){
   pantallaDos = loadImage("pantalla2.png");
   image(pantallaDos,0,0,550,350);
   cast = createFont("Germanica.ttf",38);
   textFont(cast);
   text("El gallo",335,posY4);
   posY4--;
   text("La gata",335,posY5);
   posY5--;
   text("El perro",335,posY6);
   posY6--;
   text("El burro",335,posY7);
   posY7--;
   }
   if(posY4 >= 10 && creditos < 1){
    posY4-=2;
    posY5-=2;
    posY6-=2;
    posY7-=2;
   }
   
  ground = loadImage("ground transparente.png");
  image(ground,0,250,600,100);
}

void mouseClicked(){
  activar = true;
}
