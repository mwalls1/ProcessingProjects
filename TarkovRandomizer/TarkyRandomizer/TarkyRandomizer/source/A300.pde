class A300 implements Gun{
  String[] guns;
  String[] ammo;
  A300()
  {
    guns = loadStrings("300.txt");
    ammo = loadStrings("A300.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
