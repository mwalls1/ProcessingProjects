class A127x55 implements Gun{
  String[] guns;
  String[] ammo;
  A127x55()
  {
    guns = loadStrings("12755.txt");
    ammo = loadStrings("A12755.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
