class A40x46 implements Gun{
  String[] guns;
  String[] ammo;
  A40x46()
  {
    guns = loadStrings("4046.txt");
    ammo = loadStrings("A4046.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
