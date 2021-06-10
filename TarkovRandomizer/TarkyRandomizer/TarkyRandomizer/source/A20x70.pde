class A20x70 implements Gun{
  String[] guns;
  String[] ammo;
  A20x70()
  {
    guns = loadStrings("2070.txt");
    ammo = loadStrings("A2070.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
