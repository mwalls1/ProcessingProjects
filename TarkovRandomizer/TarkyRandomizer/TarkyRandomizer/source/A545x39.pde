class A545x39 implements Gun{
  String[] guns;
  String[] ammo;
  A545x39()
  {
    guns = loadStrings("54539.txt");
    ammo = loadStrings("A54539.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
