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

void init(){
  loadImages(numberOfImages);  
  
}

void loadImages(int numberOfImages){
  
  images = new PImage[numberOfImages];
  
  img1 = loadImage("data/1.jpg");
  img2 = loadImage("data/2.JPG");
  img3 = loadImage("data/3.png");
  img4 = loadImage("data/4.jpg");
  img5 = loadImage("data/5.jpg");
  
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
      images[1] = img.get((generalWidth / numberOfImages), (generalWidth / numberOfImages), generalWidth - (generalWidth / numberOfImages), generalHeight - (generalWidth / numberOfImages)); 
    }
    
    if(i == 2) { 
      img = images[2]; 
      images[2] = img.get((int) ((generalWidth / numberOfImages)*2), (int) ((generalWidth / numberOfImages)*2), 
                                  generalWidth - ((generalWidth / numberOfImages)*2), generalHeight - (generalWidth / numberOfImages)*2); 
    }
                                  
    if(i == 3) {  
      img = images[3]; 
      images[3] = img.get((int) ((generalWidth / numberOfImages)*3), (int) ((generalWidth / numberOfImages)*3), 
                                  generalWidth - ((generalWidth / numberOfImages)*3), generalHeight - (generalWidth / numberOfImages)*3); 
    }
    
    if(i == 4) {  
      img = images[4]; 
      images[4] = img.get((int) ((generalWidth / numberOfImages)*4), (int) ((generalWidth / numberOfImages)*4), 
                                  generalWidth - ((generalWidth / numberOfImages)*4), generalHeight - (generalWidth / numberOfImages)*4); 
    }
  }
}

void draw(){
  background(250);
  imageMode(CENTER);
  translate(generalWidth/2, generalHeight/2);
  image(images[0], 0, 0);
  image(images[1], 0, 0);
  image(images[2], 0, 0);
  image(images[3], 0, 0);
  image(images[4], 0, 0);
}