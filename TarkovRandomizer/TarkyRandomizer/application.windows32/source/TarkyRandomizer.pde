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
void setup()
{
  reader = createReader("gunsAndAmmo.txt");
  background(140);
  size(650,860);
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
