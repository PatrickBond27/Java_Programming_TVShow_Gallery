public class Artefact {
  private int xpos;
  private int ypos;
  private PImage img;
  private String name;
  private String year;
  private String awards;
  private String genre;
  private String time;
  private String link;
  private String title;

  //Default Constructor 
  public Artefact() {
    xpos = 40;
    ypos = 100;
    img = loadImage("tvshow1.jpeg");
    name = "Fargo";
    year = "2014-";
    awards = "Won 3 Golden Globes. Another 56 wins and 221 nominations.";
    genre = "Crime, Drama, Thriller";
    time = "41 episodes - 53mins per episode.";
    link = "https://www.youtube.com/watch?v=xZCiyw1ZfB0";
    title = "Lists of TV Shows";
  }
  //Constructor with ten parameters: one for each instance variable
  public Artefact(int x, int y, PImage i, String n, String yr, String aw, String g, String t, String l, String ti) {
    xpos = x;
    ypos = y;
    img = i;
    name = n;
    year = yr;
    awards = aw;
    genre = g;
    time = t;
    link = l;
    title = ti;
  }

  //set methods
  public void setX(int newX) {
    xpos = newX;
  }

  //get methods
  public int getX() {
    return xpos;
  }
  
  //Link button for the trailer
  public String getLink() {
    return link;
  }
  public void display() {
    background(100);
    image(img, xpos, ypos, 250, 380);
    textSize(30);
    fill(255);
    text(name, xpos+270, ypos+70);
    text(year, xpos+270, ypos+130);
    text(awards, xpos+270, ypos+210);
    text(genre, xpos+270, ypos+270);
    text(time, xpos+270, ypos+330);
    textSize(40);
    text(title, xpos+400, ypos-40);
  }
}
