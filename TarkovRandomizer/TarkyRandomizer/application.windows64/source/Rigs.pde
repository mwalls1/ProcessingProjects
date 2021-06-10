class Rigs{
  String isArmored;
  String name;
  Rigs(String name)
  {
    this.name = name;
  }
  String getName()
  {
    return name;
  }
  void setArmor(String isArmored)
  {
    this.isArmored = isArmored;
  }
  boolean armored()
  {
    return isArmored.equals("True");
  }
}
