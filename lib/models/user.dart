class User
{
  String myid = '';
  String email = '';
  String name = '';
  String password = '';
  String building= '';
  int flat = 0;

  User.fromJson(Map<String, dynamic> map) {
    if (map == null){
      return;
    }
    email = ['email']?? '';
    name = ['name'] ?? '';
  }


  void set Email(String email)
  {
    this.email = email;
  }
  void set Name(String names)
  {
    this.name = names;
  }

  void set MyId(String myid)
  {
    this.myid = myid;
  }

  void set Building(String building)
  {
    this.building = building;
  }

  void set Flat(int flat)
  {
    this.flat = flat;
  }
  String get MyId
  {
    return myid;
  }

  int get Flat
  {
    return flat;
  }

  String get Building
  {
    return building;
  }

  String get Email
  {
    return email ;
  }
  String get Name
  {
    return name;
  }



  User({this.email});
}
