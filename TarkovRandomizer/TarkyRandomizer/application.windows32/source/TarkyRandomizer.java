import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class TarkyRandomizer extends PApplet {

Button randomize;
String helmet = "";
String armor = "";
String rig = "";
String backpack = "";
String gun = "";
String map = "";
String ammo = "";
String tLevel = "";
String[] helmets;
String[] armors;
String[] rigs;
String[] backpacks;
String[] guns;
String[] maps;
int count = 0;
int rcount = 0;
int gSize = 0;
int rSize = 0;
ArrayList<Gun> gtypes = new ArrayList<Gun>();
ArrayList<Rigs> rtypes = new ArrayList<Rigs>();
BufferedReader reader;
String line = "hello";
public void setup()
{
  reader = createReader("gunsAndAmmo.txt");
  background(140);
  
  randomize = new Button("Randomize", 480, 760, 150, 50);
  helmets = loadStrings("helmets.txt");
  armors = loadStrings("armor.txt");
  rigs = loadStrings("rigs.txt");
  backpacks = loadStrings("backpacks.txt");
  maps = loadStrings("maps.txt");
  try{
    line = reader.readLine();
  } catch (IOException e){
    e.printStackTrace();
    line = null;
  }
  while(!(line == null))
  {
    gtypes.add(new Gun(line));
    try{
      line = reader.readLine();
    } catch (IOException e){
      e.printStackTrace();
      line = null;
    }
    gtypes.get(count).setAmmo(line);
    try{
      line = reader.readLine();
    } catch (IOException e){
      e.printStackTrace();
      line = null;
    }
    count++;
  }
    reader = createReader("rigs.txt");
    line = "hello";
    try{
      line = reader.readLine();
    } catch (IOException e){
      e.printStackTrace();
      line = null;
    }
    while(!(line == null))
    {
      rtypes.add(new Rigs(line));
      try{
        line = reader.readLine();
      } catch (IOException e){
        e.printStackTrace();
        line = null;
      }
      rtypes.get(rcount).setArmor(line);
      try{
        line = reader.readLine();
      } catch (IOException e){
        e.printStackTrace();
        line = null;
      }
      rcount++;
  }
  gSize = gtypes.size();
  rSize = rtypes.size();
}
public void draw()
{
  clear();
  randomize.Draw();
  fill(255);
  textSize(24);
  text("Helmet: ",100,100);
  text(helmet, 300, 100);
  text("Armor: ", 100, 200);
  text(armor, 300, 200);
  text("Rig: ", 100, 300);
  text(rig, 300, 300);
  text("Backpack: ", 100, 400);
  text(backpack, 300, 400);
  text("Gun: ", 100, 500);
  text(gun, 300, 500);
  text("Ammo: ", 100, 600);
  text(ammo, 300, 600);
  text("Trader Lvl: ", 100, 700);
  text(tLevel, 300, 700);
  text("Map: ", 100, 800);
  text(map, 300, 800);
  
    
}
public void mouseReleased()
{
  if(randomize.MouseIsOver())
  {
    helmet = helmets[(int)random(helmets.length)];
    armor = armors[(int)random(armors.length)];
    int rNum = (int)random(rSize);
    Rigs r = rtypes.get(rNum);
    if(r.armored())
    {
      rig = r.getName();
      armor = "None";
    }
    else
      rig = r.getName();
    backpack = backpacks[(int)random(backpacks.length)];
    tLevel = ""+ ((int)random(4)+1);
    int gNum = (int)random(gSize);
    gun = gtypes.get(gNum).getName();
    ammo = gtypes.get(gNum).getRandomAmmo();
    map = maps[(int)random(maps.length)];
  }
    
}
class Button {
  String label;
  float x;    // top left corner x position
  float y;    // top left corner y position
  float w;    // width of button
  float h;    // height of button
  
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  public void Draw() {
    fill(218);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
  }
  
  public boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
class Gun{
  String ammoType;
  String[] ammoList;
  String name;
  Gun(String name)
  {
    this.name = name;
  }
  Gun(String name, String ammoType)
  {
    this.name = name;
    this.ammoType = ammoType;
    ammoList = loadStrings("A"+ammoType+".txt");
  }
  public String getRandomAmmo(){
    return ammoList[(int)random(ammoList.length)];
  }
  public String getName()
  {
    return name;
  }
  public void setAmmo(String ammoType)
  {
    this.ammoType = ammoType;
    ammoList = loadStrings("A"+ammoType+".txt");
  }
}
class Rigs{
  String isArmored;
  String name;
  Rigs(String name)
  {
    this.name = name;
  }
  public String getName()
  {
    return name;
  }
  public void setArmor(String isArmored)
  {
    this.isArmored = isArmored;
  }
  public boolean armored()
  {
    return isArmored.equals("True");
  }
}
  public void settings() {  size(650,860); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "TarkyRandomizer" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
