class Gun{
  String ammoType;
  String[] ammoList;
  String name;
  Gun(String name)
  {
    this.name = name;
  }
  Gun(String name, String ammoType)
  {
    this.name = name;
    this.ammoType = ammoType;
    ammoList = loadStrings("A"+ammoType+".txt");
  }
  String getRandomAmmo(){
    return ammoList[(int)random(ammoList.length)];
  }
  String getName()
  {
    return name;
  }
  void setAmmo(String ammoType)
  {
    this.ammoType = ammoType;
    ammoList = loadStrings("A"+ammoType+".txt");
  }
}
