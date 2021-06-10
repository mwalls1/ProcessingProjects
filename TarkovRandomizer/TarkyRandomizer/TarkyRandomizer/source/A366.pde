class A366 implements Gun{
  String[] guns;
  String[] ammo;
  A366()
  {
    guns = loadStrings("366.txt");
    ammo = loadStrings("A366.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
