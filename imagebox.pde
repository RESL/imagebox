//
// imagebox
// using images to create 'boxing' effect
//

int generalWidth = 600;
int generalHeight = 800;

void setup(){
  size(600, 800);
  init();
}

int numberOfImages = 5;
PImage[] images;
PImage img1, img2, img3, img4, img5;
int spacer = (int) (generalWidth / numberOfImages);

void init(){
  loadImages(numberOfImages);  
  
}

void loadImages(int numberOfImages){
  
  images = new PImage[numberOfImages];
  
  String url = "http://lorempixel.com/300/300/";
  
  img1 = loadImage(url, "png");
  img2 = loadImage(url, "png");
  img3 = loadImage(url, "png");
  img4 = loadImage(url, "png");
  img5 = loadImage(url, "png");
  
  images[0] = img1;
  images[1] = img2;
  images[2] = img3;
  images[3] = img4;
  images[4] = img5;
  
  resizeImages();
}

void resizeImages(){
  
  for(int i = 0; i < numberOfImages; i++){
    
    PImage img;
    img = images[i];
    img.resize(generalWidth, generalHeight);
    
    if(i == 0) { img.get(0,0, generalWidth, generalHeight); }
    
    if(i == 1) { 
      img = images[1]; 
      images[1] = img.get(spacer, spacer, generalWidth - spacer, generalHeight - spacer); 
    }
    
    if(i == 2) { 
      img = images[2]; 
      images[2] = img.get((int) (spacer*2), (int) (spacer*2), generalWidth - (spacer*2), generalHeight - spacer*2); 
    }
                                  
    if(i == 3) {  
      img = images[3]; 
      images[3] = img.get((int) (spacer*3), (int) (spacer*3), generalWidth - (spacer*3), generalHeight - spacer*3); 
    }
    
    if(i == 4) {  
      img = images[4]; 
      images[4] = img.get((int) (spacer*4), (int) (spacer*4), generalWidth - (spacer*4), generalHeight - spacer*4); 
    }
  }
}

void draw(){
  background(250);
  
  pushMatrix();
  imageMode(CENTER);
  translate(generalWidth/2, generalHeight/2);
  image(images[0], 0, 0);
  image(images[1], 0, 0);
  image(images[2], 0, 0);
  image(images[3], 0, 0);
  image(images[4], 0, 0);
  popMatrix();
 
  noFill();
  strokeWeight(30);
  stroke(0, 0, 255);
  //rect(0, 0, generalWidth, generalHeight);
  rect(spacer/2, spacer/2, generalWidth - spacer, generalHeight - spacer);
  rect(spacer, spacer, generalWidth - spacer*2, generalHeight - spacer*2);
  rect(spacer + spacer/2, spacer + spacer/2, generalWidth - spacer*3, generalHeight - spacer*3);
  rect(spacer + spacer, spacer+ spacer, generalWidth - spacer*4, generalHeight - spacer*4);
  
  println(spacer);
  
}

void mousePressed(){
  
}