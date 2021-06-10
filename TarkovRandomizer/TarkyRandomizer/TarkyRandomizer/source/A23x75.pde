class A23x75 implements Gun{
  String[] guns;
  String[] ammo;
  A23x75()
  {
    guns = loadStrings("2375.txt");
    ammo = loadStrings("A2375.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
