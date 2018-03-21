class Conceptos {

  Body body;
  float w;
  float h;
  float r;
  int i = 255;

  Conceptos(float x, float y) {
    w = 8;
    h = 24;
    r = 8;
   
    makeBody(new Vec2(x, y));
  }

  
  void killBody() {
    box2d.destroyBody(body);
  }

  
  boolean done() {
    
    Vec2 pos = box2d.getBodyPixelCoord(body);
    
    if (pos.y > height+w*h) {
      
      killBody();
      return true;
    }
    return false;
  }

  // Drawing the lollipop
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
    float a = body.getAngle();
    
 
   if (((mouseX> +0) && (mouseX< x +100) && (mouseY> y +0) && (mouseY< y +100))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
    if(pos.y > 250){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }
    font = loadFont("Adam-48.vlw");
    textFont(font);
    textSize(30);
    text("Amor",w,h);
    popMatrix();
   }
 
 if (((mouseX> +101) && (mouseX< x +200) && (mouseY> y +0) && (mouseY< y +100))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999, i);
    if(pos.y > 250){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }
    font = loadFont("basictitlefont-48.vlw");
    textFont(font);
    textSize(30);
    text("Amistad",w,h);
    popMatrix();
   }
   
 if (((mouseX> +201) && (mouseX< x +300) && (mouseY> y +0) && (mouseY< y +100) )){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
    if(pos.y > 250){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }
    font = loadFont("CaviarDreams-48.vlw");
    textFont(font);
    textSize(30);
    text("Familia",w,h);
    popMatrix();
   }
 
 if (((mouseX> +301) && (mouseX< x +400) && (mouseY> y +0) && (mouseY< y +100))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
    if(pos.y > 250){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }
    font = loadFont("ClementePDaa-Hairline-48.vlw");
    textFont(font);
    textSize(30);
    text("Latidos",w,h);
    popMatrix();
   }
 
 if (((mouseX> +0) && (mouseX< x +100) && (mouseY> y +101) && (mouseY< y +200))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
    if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

    font = loadFont("ClementePDad-ExtraLightItalic-48.vlw");
    textFont(font);
    textSize(30);
    text("Suspiros",w,h);
    popMatrix();
   }
 
 if (((mouseX> +101) && (mouseX< x +200) && (mouseY> y +101) && (mouseY< y +200))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999, i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

    font = loadFont("Code-Bold-48.vlw");
    textFont(font);
    textSize(20);
    text("Mi primer beso",w,h);
    popMatrix();
   }
 
  if (((mouseX> +201) && (mouseX< x +300) && (mouseY> y +101) && (mouseY< y +200))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("Code-Light-48.vlw");
    textFont(font);
    textSize(30);
    text("Melodias",w,h);
    popMatrix();
   }
   
   if (((mouseX> +301) && (mouseX< x +400) && (mouseY> y +101) && (mouseY< y +200))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("GeosansLight-48.vlw");
    textFont(font);
    textSize(30);
    text("Belleza",w,h);
    popMatrix();
   }
   
   if (((mouseX> +0) && (mouseX< x +100) && (mouseY> y +201) && (mouseY< y +300))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
    if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("Impact-48.vlw");
    textFont(font);
    textSize(20);
    text("Recuerdos",w,h);
    popMatrix();
   }
 
 if (((mouseX> +101) && (mouseX< x +200) && (mouseY> y +201) && (mouseY< y +300))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999, i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("Lane-Narrow-48.vlw");
    textFont(font);
    textSize(30);
    text("Sabores",w,h);
    popMatrix();
   }
 
  if (((mouseX> +201) && (mouseX< x +300) && (mouseY> y +201) && (mouseY< y +300))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("Monofur-48.vlw");
    textFont(font);
    textSize(30);
    text("Emociones",w,h);
    popMatrix();
   }
   
   if (((mouseX> +301) && (mouseX< x +400) && (mouseY> y +201) && (mouseY< y +300))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }
     stroke(5);
     font = loadFont("Roboto-Thin-48.vlw");
    textFont(font);
    textSize(25);
    text("Conocimiento",w,h);
    popMatrix();
   }
   
   if (((mouseX> +0) && (mouseX< x +100) && (mouseY> y +301) && (mouseY< y +400))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
    if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("SegoeUI-Light-48.vlw");
    textFont(font);
    textSize(30);
    text("Amuletos",w,h);
    popMatrix();
   }
 
 if (((mouseX> +101) && (mouseX< x +200) && (mouseY> y +301) && (mouseY< y +400))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999, i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("Code-Bold-48.vlw");
    textFont(font);
    textSize(20);
    text("Paisajes",w,h);
    popMatrix();
   }
 
  if (((mouseX> +201) && (mouseX< x +300) && (mouseY> y +301) && (mouseY< y +400))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
     if(pos.y > 400){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

    font = loadFont("Code-Light-48.vlw");
    textFont(font);
    textSize(30);
    text("Miradas",w,h);
    popMatrix();
   }
   
   if (((mouseX> +301) && (mouseX< x +400) && (mouseY> y +301) && (mouseY< y +400))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
     if(pos.y > 370){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

    font = loadFont("CaviarDreams-48.vlw");
    textFont(font);
    textSize(30);
    text("Aromas",w,h);
    popMatrix();
   }
   
   if (((mouseX> +0) && (mouseX< x +200) && (mouseY> y +401) && (mouseY< y +500))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999,i);
    if(pos.y > 420){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

     font = loadFont("GeosansLight-48.vlw");
    textFont(font);
    textSize(30);
    text("Niñez",w,h);
    popMatrix();
   }
 
 if (((mouseX> +201) && (mouseX< x +400) && (mouseY> y +401) && (mouseY< y +500))){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#A27999, i);
     if(pos.y > 420){
    fill(#A27999,i-150);
    }
    if(pos.y > 450){
    fill(#A27999,i-200);
    }

    font = loadFont("ClementePDaa-Hairline-48.vlw");
    textFont(font);
    textSize(30);
    text("Inocencia",w,h);
    popMatrix();
   }
 
 
  }

  
  // This function adds the rectangle to the box2d world
  void makeBody(Vec2 center) {

    // Define the body and make it from the shape
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);

    

    // Give it some initial random velocity
    body.setLinearVelocity(new Vec2(random(-7, 5), random(5, 5)));
    body.setAngularVelocity(random(-5, 5));
  }
}