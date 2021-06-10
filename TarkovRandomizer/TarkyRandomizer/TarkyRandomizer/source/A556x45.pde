class A556x45 implements Gun{
  String[] guns;
  String[] ammo;
  A556x45()
  {
    guns = loadStrings("55645.txt");
    ammo = loadStrings("A55645.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
