class A46x30 implements Gun{
  String[] guns;
  String[] ammo;
  A46x30()
  {
    guns = loadStrings("4630.txt");
    ammo = loadStrings("A4630.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
