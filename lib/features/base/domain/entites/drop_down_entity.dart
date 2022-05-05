class DropDownEntity{
  int id;
  String name;
  String img;

  DropDownEntity({required this.id,required this.name,required this.img});
  @override
  String toString() {
    // TODO: implement toString
    return name;
  }
}