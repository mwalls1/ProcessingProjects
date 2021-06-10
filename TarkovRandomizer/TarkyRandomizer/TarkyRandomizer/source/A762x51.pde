class A762x51 implements Gun{
  String[] guns;
  String[] ammo;
  A762x51()
  {
    guns = loadStrings("76251.txt");
    ammo = loadStrings("A76251.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
