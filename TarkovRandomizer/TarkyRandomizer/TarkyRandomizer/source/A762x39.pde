class A762x39 implements Gun{
  String[] guns;
  String[] ammo;
  A762x39()
  {
    guns = loadStrings("76239.txt");
    ammo = loadStrings("A76239.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
