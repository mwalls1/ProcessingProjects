class A9x19 implements Gun{
  String[] guns;
  String[] ammo;
  A9x19()
  {
    guns = loadStrings("919.txt");
    ammo = loadStrings("A919.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
