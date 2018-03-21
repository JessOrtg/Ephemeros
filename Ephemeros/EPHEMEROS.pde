import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A reference to our box2d world
Box2DProcessing box2d;

// A list for all of our rectangles
ArrayList<Conceptos> palabras;
int pantalla = 0;
PFont font;
int x,y;
int persona = 0;

void setup() {
  size(400,500);
  smooth();

  // Initialize box2d physics and create the world
  box2d = new Box2DProcessing(this,20);
  box2d.createWorld();
  // We are setting a custom gravity
  box2d.setGravity(0, -20);

  // Create ArrayLists  
  palabras = new ArrayList<Conceptos>();

}

void draw() {
  switch(pantalla){
       case 0:
       pantallaInicio();
    if (persona == 0){
      if (keyPressed == true){
     switch(key){
       case 'a':
        pantalla = 1;
     }
      }
    }
       break;
       case 1:
     if (pantalla == 1){
        pantallaInfo();
        
       } 
        break;
        case 2:
     if (pantalla == 2){
       pantallaConceptos();
          }
       break;
       case 3:
     if (pantalla == 3){
       pantallaFinal();
     }
     }
 
}

void pantallaInicio(){
      background(#8B9D85);
      
    font = loadFont("GeosansLight-48.vlw");
    textFont(font);
    textSize(50);
    fill(#FFFFFF);
    text("E P H E M E R O S",40,140);
    textSize(20);
    fill(#FFFFFF);
    text("P R E S I O N A  'A'", 130,407);
   
 }
 
 
 void pantallaInfo(){
      background(#B498A7);
      
    font = loadFont("Monofur-48.vlw");
    textFont(font);
    textSize(20);
    fill(255);
    text("Hay una serie de cosas a lo largo", 30,150);
     text("de nuestras vidas que nos dan sentido", 15,175);
       text("TODAS son solo instantes...", 60,205);
    textSize(18);
    fill(255);
    text("* Presiona 'x' para continuar", 55, 300);
     text("* En la siguiente pantalla presiona", 55,320);
     text("con tu mouse los lugares que quieras", 50,340);
   if (persona == 0){
      if (keyPressed == true){
     switch(key){
       case 'x':
        pantalla = 2;
       break;
     }
      
    }}
   
 }


void pantallaConceptos(){
  background(#DCE4E7);
  font = loadFont("GeosansLight-48.vlw");
    textFont(font);
    textSize(25);
    fill(#A9ADAA);
    text("Presiona 's' para salir", 100,470);
  
  box2d.step();

  for (Conceptos p: palabras) {
    p.display();
  }

  for (int i = palabras.size()-1; i >= 0; i--) {
    Conceptos p = palabras.get(i);
    if (p.done()) {
      palabras.remove(i);
    }
  }
  if (persona == 0){
      if (keyPressed == true){
     switch(key){
       case 's':
        pantalla = 3;
       break;
     }
      
    }}

}

void mousePressed() {
  Conceptos p = new Conceptos(mouseX,mouseY);
  palabras.add(p);
}

void pantallaFinal(){
    background(#627F89);
      
    font = loadFont("Roboto-Thin-48.vlw");
    textFont(font);
    textSize(25);
    fill(#FFFFFF);
    text("Haz  o  recuerda,", 115,225);
    text("que tu esencia está en eso", 60,255);
      textSize(25);
    text("presiona 'i'", 140,450);
    switch(key){
       case 'i':
        pantalla = 0;
        persona = 0;
       break;
     }
    
    
}