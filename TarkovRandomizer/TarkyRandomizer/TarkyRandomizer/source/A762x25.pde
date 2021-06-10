class A762x25 implements Gun{
  String[] guns;
  String[] ammo;
  A762x25()
  {
    guns = loadStrings("76225.txt");
    ammo = loadStrings("A76225.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
