class A338 implements Gun{
  String[] guns;
  String[] ammo;
  A338()
  {
    guns = loadStrings("338.txt");
    ammo = loadStrings("A338.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
