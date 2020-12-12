// import 'package:flutter/material.dart';
//
// class update_Details extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.symmetric(vertical: 20),
//         width: double.infinity,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 colors: [Colors.black, Colors.black])),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     "Update Information",
//                     style: TextStyle(color: Colors.white, fontSize: 35),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 8),
//                     child: Text(
//                       "Information",
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(60),
//                         topRight: Radius.circular(60))),
//                 child: Padding(
//                   padding: EdgeInsets.all(20.0),
//                   child: settingForm(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class settingForm extends StatefulWidget {
//   @override
//   _settingFormState createState() => _settingFormState();
// }
//
// class _settingFormState extends State<settingForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//      //   crossAxisAlignment: CrossAxisAlignment.start,
//
//         children: [
//
//           TextField(
//             decoration: InputDecoration(
//                 contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
//                 labelText: 'Name'
//             ),
//
//           ),
//           SizedBox(
//             height: 25.0,
//           ),
//
//           TextField(
//             decoration: InputDecoration(
//                 contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
//                 labelText: 'Address'
//             ),
//           ),
//           SizedBox(
//             height: 25.0,
//           ),
//
//           TextField(
//             decoration: InputDecoration(
//                 contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
//                 labelText: 'Phone'
//             ),
//
//           ),
//           SizedBox(
//             height: 25.0,
//           ),
//
//           TextField(
//             decoration: InputDecoration(
//               contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
//                 labelText: 'Number of members',
//
//             ),
//
//           ),
//           SizedBox(
//             height:20.0,
//           ),
//           RaisedButton(
//             onPressed: () {},
//             textColor: Colors.white,
//             padding: const EdgeInsets.all(0.0),
//             child: Container(
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: <Color>[
//                     Color(0xFF0D47A1),
//                     Color(0xFF42A5F5),
//                   ],
//                 ),
//               ),
//               padding: const EdgeInsets.all(10.0),
//               child:
//               const Text('UPDATE', style: TextStyle(fontSize: 20)),
//             ),),
//         ],
//
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:society_resident/constants/ui_constants.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:societyworker/home_screens/homeScreen.dart';

import 'package:toast/toast.dart';

File _imageFile;  //should have previous image



class update_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.black, Colors.black])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Update Information",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Resident Information",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: updateForm(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class updateForm extends StatefulWidget {
  @override
  _updateFormState createState() => _updateFormState();
}

class _updateFormState extends State<updateForm> {


  ImageSource imgSource;
  TextEditingController _residentName = TextEditingController();
  TextEditingController _residentPhone = TextEditingController();
  TextEditingController _building = TextEditingController();
  TextEditingController _flat = TextEditingController();
  TextEditingController _residentCnic = TextEditingController();

  String updateNameErrorText;
  String updatePhoneErrorText;
  String updateCNICErrorText;
  String updateBuildingErrorText;
  String updateFlatErrorText;

  bool updateNameProvided = false;
  bool updatePhoneProvided = false;
  bool updateCNICProvided = false;
  bool updateFlatProvided = false;
  bool updateBuildingProvided = false;

  _settingModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              child: new Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Options",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.picture_as_pdf),
                    title: Text(
                      "Select From Gallery",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      _pickImage(ImageSource.gallery);
                      Navigator.pop(context);
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.camera),
                    title: Text(
                      "Open Your Camera",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      _pickImage(ImageSource.camera);
                      Navigator.pop(context);
                      setState(() {});
                    },
                  ),
                ],
              ));
        });
  }

  Future<void> _pickImage(ImageSource source) async {
    File _selected = await ImagePicker.pickImage(source: source);
    setState(() {
      if(_selected==null){
        Toast.show("No Image Added", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
      }
      else
      {
        _imageFile = _selected;
        _selected=null;
        Toast.show("Image Added", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
      }
    });
  }

  void clear() {
    setState(() {
      _imageFile = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: 10.0,
                right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[


                Center(
                    child: GestureDetector(
                      onTap: () {_settingModalBottomSheet(context);},
                      child: _imageFile != null
                          ? //ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.file(_imageFile,fit: BoxFit.fill,),)

                      Container(width: 100, height: 100,
                          decoration:BoxDecoration(border:Border.all(color: Colors.grey),shape: BoxShape.circle, image: new DecorationImage(image: new FileImage(_imageFile), fit: BoxFit.cover,)))

                          : Container(decoration: BoxDecoration(border:Border.all(color: Colors.grey),color: Colors.grey[200],borderRadius: BorderRadius.circular(50)),width: 100,
                        height: 100,child: Icon(Icons.camera_alt,color: Colors.grey[800],),),)),
                SizedBox(
                  height: 22.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 10),
                  child: Text(
                    "Full Name",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
//                text_input(
//                    'Enter President\'s Full Name', Icons.contact_mail, false),
                TextFormField(
                  controller: _residentName,
                  keyboardType: TextInputType.name,

                  decoration: InputDecoration(
                    //labelText: 'Email',
                    hintText: 'Ali Muhammad Murad Ali',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    errorText: (updateNameProvided)?null:updateNameErrorText,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                  onTap: () {},

                  onChanged: (updateName) {
                    print(updateName);
                    setState((){

                      RegExp regExp =
                      new RegExp(
                        r"[a-zA-Z]",
                        caseSensitive: true,
                      );
                      RegExp regExp2 =
                      new RegExp(
                        r"[0-9]",
                      );
                      RegExp regExp3 =
                      new RegExp(
                        r"[$&+,:;=?@#|'<>.^*()%!-]",

                      );


                      if(regExp3.hasMatch(updateName) && !updateName.isEmpty)
                      {
                        updateNameErrorText='*You can not use special characters here';
                        updateNameProvided= false;
                      }
                      else if(regExp2.hasMatch(updateName) && !updateName.isEmpty){
                        updateNameErrorText= '*You can not use numbers';
                        updateNameProvided= false;
                      }
                      else if (updateName.length <= 3 && !updateName.isEmpty) {
                        updateNameErrorText='*Length of name should be greater than 3';
                        updateNameProvided=false;
                      }
                      else if(!updateName.contains(' ') && !updateName.isEmpty){
                        updateNameErrorText= '*Please also add the last name';
                        updateNameProvided= false;
                      }
                      else if(updateName.isEmpty){
                        updateNameErrorText= null;
                        updateNameProvided= false;
                      }

                      else if(regExp.hasMatch(updateName) ){
                        updateNameErrorText= null;
                        updateNameProvided= true;
                      }

                    });

                  },
                ),
                SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 10),
                  child: Text(
                    "Phone Number",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
//                text_input('Enter President\'s Phone', Icons.phone, false),


                TextFormField(
                  controller: _residentPhone,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    //labelText: 'Email',
                    hintText: '03332999664',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    errorText: (updatePhoneProvided)?null:updatePhoneErrorText,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                  ),
                  onTap: () {},
                  onChanged: (updatephone) {

                    print(updatephone);
                    setState(() {

                      if(updatephone.length != 11 && !updatephone.isEmpty)
                      {
                        updatePhoneErrorText='*Length should be 11';
                        updatePhoneProvided= false;
                      }
                      else if (updatephone.isEmpty){
                        updatePhoneErrorText= null;
                        updatePhoneProvided= false;
                      }
                      else
                      {
                        updatePhoneErrorText='Phone constraints satisfied';
                        updatePhoneProvided= true;
                      }

                    });
                    print(updatePhoneProvided);

                  },
                ),
                SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 10),
                  child: Text(
                    "Your Address",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
//                text_input(
//                    'Enter Worker\'s Address', Icons.add_location, false),

                //text_input('Building', Icons.location_on, false),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextFormField(
                          controller: _building,
                          decoration: InputDecoration(
                            //labelText: 'Email',
                            hintText: 'Y',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                            errorText: (updateBuildingProvided)?null:updateBuildingErrorText,
                            //  floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                          ),
                          onTap: () {},
                          onChanged: (updateBuilding) {
                            print(updateBuilding);
                            setState((){

                              RegExp regExp =
                              new RegExp(
                                r"[a-zA-Z]",
                                caseSensitive: true,
                              );
                              RegExp regExp1 =
                              new RegExp(
                                r"[0-9]",
                              );
                              RegExp regExp2 =
                              new RegExp(
                                r"[$&+,:;=?@#|'<>.^*()%!-]",

                              );


                              if(regExp2.hasMatch(updateBuilding))
                              {
                                updateBuildingErrorText='*No special characters allowed';
                                updateBuildingProvided= false;
                              }
                              else if(regExp1.hasMatch(updateBuilding)){
                                updateBuildingErrorText= '*No numbers allowed';
                                updateBuildingProvided= false;
                              }

                              else if (updateBuilding.isEmpty){
                                updateBuildingErrorText= null;
                                updateBuildingProvided= false;
                              }

                              else if(regExp.hasMatch(updateBuilding) ){
                                updateBuildingErrorText= null;
                                updateBuildingProvided= true;
                              }

                            });

                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextFormField(
                          controller: _flat,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            //labelText: 'Email',
                            hintText: '812',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                            errorText: (updateFlatProvided)?null:updateFlatErrorText,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                                gapPadding: 10),
                          ),
                          onTap: () {},
                          onChanged: (updateflat) {

                            print(updateflat);
                            setState(() {

                              if(updateflat.length != 3 && !updateflat.isEmpty){
                                updateFlatErrorText='*Length should be 3';
                                updateFlatProvided= false;
                              }
                              else
                              {
                                updateFlatErrorText='Phone constraints satisfied';
                                updateFlatProvided= true;
                              }

                            });
                            print(updateFlatProvided);

                          },
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 10),
                  child: Text(
                    "CNIC Number",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
//                text_input(
//                    'Enter President\'s CNIC', Icons.card_membership, false),
                TextFormField(
                  controller: _residentCnic,
                  decoration: InputDecoration(
                    //labelText: 'Email',
                    hintText: '42101-7986330-1',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    errorText: (updateCNICProvided)?null:updateCNICErrorText,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10),
                    prefixIcon: Icon(
                      Icons.card_membership,
                      color: Colors.grey,
                    ),
                  ),
                  onTap: () {},

                  onChanged: (updateCNIC) {

                    print(updateCNIC);
                    setState(() {
                      RegExp regExp =
                      new RegExp(
                        r"^[0-9]{5}-[0-9]{7}-[0-9]{1}$",
                      );
                      RegExp regExp2 =
                      new RegExp(
                        r"[a-zA-Z]",

                      );
                      RegExp regExp3 =
                      new RegExp(
                        r"[$&+,:;=?@#|'<>._^*()%!]",

                      );

                      if(regExp2.hasMatch(updateCNIC)){
                        updateCNICErrorText='*Cannot contain characters';
                        updateCNICProvided= false;
                      }

                      else if(regExp3.hasMatch(updateCNIC))
                      {
                        updateCNICErrorText='*You can only use - as a special character';
                        updateCNICProvided= false;
                      }
                      else if(!regExp.hasMatch(updateCNIC) && !updateCNIC.isEmpty)
                      {
                        updateCNICErrorText='Please Use the format XXXXX-XXXXXXX-X';
                        updateCNICProvided= false;
                      }
                      else if(updateCNIC.isEmpty)
                      {
                        updateCNICErrorText='';
                        updateCNICProvided= false;
                      }
                      else
                      {
                        updateCNICProvided= true;
                      }


                    });
                    print(updateCNICProvided);

                  },
                ),


                SizedBox(
                  height: 27.0,
                ),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.black,
                    color: Colors.black,
                    elevation: 7.0,
                    child: MaterialButton(
                      onPressed: () {


                        if(_imageFile!=null || updateBuildingProvided || updateFlatProvided || updatePhoneProvided || updateNameProvided || updateCNICProvided)
                        {


                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  homeScreen()));
                          Toast.show("Information Updated", context,
                              duration: Toast.LENGTH_LONG, gravity: Toast
                                  .BOTTOM);
                          //after back up all on data base
                          setState(() {
                            if(_imageFile!=null) _imageFile=null;
                            if(updateBuildingProvided) _building.clear();
                            if(updateCNICProvided) _residentCnic.clear();
                            if(updateNameProvided) _residentName.clear();
                            if(updatePhoneProvided) _residentPhone.clear();
                            if(updateFlatProvided)  _flat.clear();
                          });
                        }
                        else{
                          Toast.show("Nothing to Updated", context,
                              duration: Toast.LENGTH_LONG, gravity: Toast
                                  .BOTTOM);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen()));
                        }



                      },
                      child: Center(
                        child: Text(
                          'Update Information',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
