class A9x18 implements Gun{
  String[] guns;
  String[] ammo;
  A9x18()
  {
    guns = loadStrings("918.txt");
    ammo = loadStrings("A918.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
