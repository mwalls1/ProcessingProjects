class A762x54 implements Gun{
  String[] guns;
  String[] ammo;
  A762x54()
  {
    guns = loadStrings("76254.txt");
    ammo = loadStrings("A76254.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
