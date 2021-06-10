class A45 implements Gun{
  String[] guns;
  String[] ammo;
  A45()
  {
    guns = loadStrings("45.txt");
    ammo = loadStrings("A45.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
