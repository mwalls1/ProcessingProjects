class A12x70 implements Gun{
  String[] guns;
  String[] ammo;
  A12x70()
  {
    guns = loadStrings("1270.txt");
    ammo = loadStrings("A1270.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
