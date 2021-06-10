class A57x28 implements Gun{
  String[] guns;
  String[] ammo;
  A57x28()
  {
    guns = loadStrings("5728.txt");
    ammo = loadStrings("A5728.txt");
  }
  String[] getRandomAmmo()
  {
    String[] temp = new String[2];
    temp[0] = guns[(int)random(guns.length)];
    temp[1] = ammo[(int)random(ammo.length)];
    return temp;
  }
}
