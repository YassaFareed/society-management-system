class User
{
  String myid = '';
  String email = '';
  String name = '';
  String password = '';
  String building= '';

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


  String get MyId
  {
    return myid;
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
