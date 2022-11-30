//Patrick Bondaruk - N00201161
//Trailer button variable
boolean trailerButton = false;

Artefact a1;
Artefact a2;
Artefact a3;
Artefact a4;
Artefact a5;
int displayed;

//This is the whole setup for each page of the gallery
void setup() {
  size(1350, 700);
  displayed = 1;
  a1 = new Artefact();
  a1.display();
  a2 = new Artefact(40, 100, loadImage("tvshow2.jpeg"), "Black Mirror", 
    "2011-", "Won 6 Primetime Emmys. Another 26 wins and 101 nominations.", 
    "Drama, Sci-Fi, Thriller", "22 episodes - 1h per episode", 
    "https://www.youtube.com/watch?v=jROLrhQkK78", "Lists of TV Shows");
  a3 = new Artefact(40, 100, loadImage("tvshow3.jpeg"), "Sherlock", 
    "2010-2017", "Nominated for 1 Golden Globe. Another 91 wins and 182 nominations.", 
    "Crime, Drama, Mystery", "15 episodes - 1h 28mins per episode", 
    "https://www.youtube.com/watch?v=xK7S9mrFWL4", "Lists of TV Shows");
  a4 = new Artefact(40, 100, loadImage("tvshow4.jpeg"), "Peaky Blinders", 
    "2013-", "20 wins and 48 nominations.", 
    "Crime, Drama", "36 episodes - 1h per episode", 
    "https://www.youtube.com/watch?v=oVzVdvGIC7U", "Lists of TV Shows");
  a5 = new Artefact(40, 100, loadImage("tvshow5.jpeg"), "Dark", 
    "2017-2020", "6 wins and 21 nominations.", 
    "Crime, Drama, Mystery", "26 episodes - 1h per episode", 
    "https://www.youtube.com/watch?v=rrwycJ08PSA", "Lists of TV Shows");
}
void draw() {

//This is a trailer button
  if (trailerButton == true) {
    fill(#23CE1B);
  } else {
    fill(#1AA013);
  }
  rect(950, 400, 220, 60);
  fill(255);
  textSize(30);
  text("Watch Trailer", 962, 440);
  
  //This is the arrow key navigation
  fill(255);
  text("Use the arrow keys to navigate through the TV Shows", 50, 550);
}

//The function for trailer button for each page
void mousePressed() {
  if (trailerButton) {
    if (displayed == 1) {
      link(a1.getLink());
    } else if (displayed == 2) {
      link(a2.getLink());
    } else if (displayed == 3){
     link(a3.getLink()); 
    } else if (displayed == 4){
     link(a4.getLink()); 
    } else if (displayed == 5){
     link(a5.getLink()); 
    }
  }
}

void mouseMoved() { 
  checkButtons();
}

void mouseDragged() {
  checkButtons();
}

//The area where the trailer button will be interactive
void checkButtons() {
  if (mouseX > 950 && mouseX < 1170 && mouseY > 400 && mouseY < 460) {
    trailerButton = true;
  } else {
    trailerButton = false;
  }
}

//The function for left and right keys
void keyPressed() {
  if (keyCode == RIGHT) {
    if (displayed == 1) {
      a2.display();
      displayed = 2;
    } else if (displayed == 2) {
      a3.display();
      displayed = 3;
    } else if (displayed == 3) {
      a4.display();
      displayed = 4;
    } else if (displayed == 4) {
      a5.display();
      displayed = 5;
    }
  }

  if (keyCode == LEFT) {
    if (displayed == 5) {
      a4.display();
      displayed = 4;
    } else if (displayed == 4) {
      a3.display();
      displayed = 3;
    } else if (displayed == 3) {
      a2.display();
      displayed = 2;
    } else if (displayed == 2) {
      a1.display();
      displayed = 1;
    }
  }
}
