class A9x39 implements Gun{
  String[] guns;
  String[] ammo;
  A9x39()
  {
    guns = loadStrings("939.txt");
    ammo = loadStrings("A939.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
