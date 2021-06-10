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
void setup()
{
  background(140);
  size(650,860);
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
void draw()
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
void mouseReleased()
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
