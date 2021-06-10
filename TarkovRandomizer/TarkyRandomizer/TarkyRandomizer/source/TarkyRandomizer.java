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
Gun[] gtypes = new Gun[19];
public void setup()
{
  background(140);
  
  randomize = new Button("Randomize", 480, 760, 150, 50);
  helmets = loadStrings("helmets.txt");
  armors = loadStrings("armor.txt");
  rigs = loadStrings("rigs.txt");
  backpacks = loadStrings("backpacks.txt");
  maps = loadStrings("maps.txt");
  gtypes[0] = new A127x55();
  gtypes[1] = new A12x70();
  gtypes[2] = new A20x70();
  gtypes[3] = new A23x75();
  gtypes[4] = new A300();
  gtypes[5] = new A338();
  gtypes[6] = new A366();
  gtypes[7] = new A45();
  gtypes[8] = new A46x30();
  gtypes[9] = new A545x39();
  gtypes[10] = new A556x45();
  gtypes[11] = new A57x28();
  gtypes[12] = new A762x25();
  gtypes[13] = new A762x39();
  gtypes[14] = new A762x51();
  gtypes[15] = new A762x54();
  gtypes[16] = new A9x18();
  gtypes[17] = new A9x19();
  gtypes[18] = new A9x39();
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
    rig = rigs[(int)random(rigs.length)];
    backpack = backpacks[(int)random(backpacks.length)];
    tLevel = ""+ ((int)random(4)+1);
    int gtype = (int)random(19);
    String[] gunInfo = new String[2];
    gunInfo = gtypes[gtype].getRandomAmmo();
    gun = gunInfo[0];
    ammo = gunInfo[1];
    map = maps[(int)random(maps.length)];
  }
    
}
class A127x55 implements Gun{
  String[] guns;
  String[] ammo;
  A127x55()
  {
    guns = loadStrings("12755.txt");
    ammo = loadStrings("A12755.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A12x70 implements Gun{
  String[] guns;
  String[] ammo;
  A12x70()
  {
    guns = loadStrings("1270.txt");
    ammo = loadStrings("A1270.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A20x70 implements Gun{
  String[] guns;
  String[] ammo;
  A20x70()
  {
    guns = loadStrings("2070.txt");
    ammo = loadStrings("A2070.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A23x75 implements Gun{
  String[] guns;
  String[] ammo;
  A23x75()
  {
    guns = loadStrings("2375.txt");
    ammo = loadStrings("A2375.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A300 implements Gun{
  String[] guns;
  String[] ammo;
  A300()
  {
    guns = loadStrings("300.txt");
    ammo = loadStrings("A300.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A338 implements Gun{
  String[] guns;
  String[] ammo;
  A338()
  {
    guns = loadStrings("338.txt");
    ammo = loadStrings("A338.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A366 implements Gun{
  String[] guns;
  String[] ammo;
  A366()
  {
    guns = loadStrings("366.txt");
    ammo = loadStrings("A366.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A40x46 implements Gun{
  String[] guns;
  String[] ammo;
  A40x46()
  {
    guns = loadStrings("4046.txt");
    ammo = loadStrings("A4046.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A45 implements Gun{
  String[] guns;
  String[] ammo;
  A45()
  {
    guns = loadStrings("45.txt");
    ammo = loadStrings("A45.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A46x30 implements Gun{
  String[] guns;
  String[] ammo;
  A46x30()
  {
    guns = loadStrings("4630.txt");
    ammo = loadStrings("A4630.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A545x39 implements Gun{
  String[] guns;
  String[] ammo;
  A545x39()
  {
    guns = loadStrings("54539.txt");
    ammo = loadStrings("A54539.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A556x45 implements Gun{
  String[] guns;
  String[] ammo;
  A556x45()
  {
    guns = loadStrings("55645.txt");
    ammo = loadStrings("A55645.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A57x28 implements Gun{
  String[] guns;
  String[] ammo;
  A57x28()
  {
    guns = loadStrings("5728.txt");
    ammo = loadStrings("A5728.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A762x25 implements Gun{
  String[] guns;
  String[] ammo;
  A762x25()
  {
    guns = loadStrings("76225.txt");
    ammo = loadStrings("A76225.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A762x39 implements Gun{
  String[] guns;
  String[] ammo;
  A762x39()
  {
    guns = loadStrings("76239.txt");
    ammo = loadStrings("A76239.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A762x51 implements Gun{
  String[] guns;
  String[] ammo;
  A762x51()
  {
    guns = loadStrings("76251.txt");
    ammo = loadStrings("A76251.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A762x54 implements Gun{
  String[] guns;
  String[] ammo;
  A762x54()
  {
    guns = loadStrings("76254.txt");
    ammo = loadStrings("A76254.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A9x18 implements Gun{
  String[] guns;
  String[] ammo;
  A9x18()
  {
    guns = loadStrings("918.txt");
    ammo = loadStrings("A918.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A9x19 implements Gun{
  String[] guns;
  String[] ammo;
  A9x19()
  {
    guns = loadStrings("919.txt");
    ammo = loadStrings("A919.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
class A9x39 implements Gun{
  String[] guns;
  String[] ammo;
  A9x39()
  {
    guns = loadStrings("939.txt");
    ammo = loadStrings("A939.txt");
  }
  public String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
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
interface Gun{
  public String[] getRandomAmmo();
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
