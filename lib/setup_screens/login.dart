import 'package:flutter/material.dart';
//import 'package:neumorphic/neumorphic.dart';
import 'package:societyworker/home_screens/homescreen.dart';
import 'package:societyworker/home_screens/navigationbar.dart';
import 'package:toast/toast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  String passwordErrorText;
  String emailErrorText;

  bool emailProvided = false;
  bool passwordProvided = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          width:double.infinity,
          height:double.infinity,
            child:Padding(
              padding: const EdgeInsets.all(20.0),
               child:Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height:20.0,
                  ),
                  SizedBox(
                    height: 250.0,
                    child: Image.asset(
                    "images/worker.jpg",
                   // fit: BoxFit.contain,
                  ),
                ),
                  SizedBox(
                  height:20.0,
                ),
                  Center(
                    child: Padding(
                     padding: EdgeInsets.fromLTRB(
                        8.0,7.0, 0.0, 10.0),
                       child: Center(
                        child: Text(
                          'Hello Worker!',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:25.0,
                ),

                Expanded(
                  child:Container(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(left: 5, bottom: 10),
                          child: Text(
                            "Email",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),
                          ),
                        ),
                        TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                          hintText: "Enter your email",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                              errorText: (emailProvided)?null:emailErrorText,
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
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                          ),
                          onTap: () {},

                          onChanged: (email) {
                            print(email);
                            setState(() {

                              RegExp regExp =
                              new RegExp(
                                r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*)@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])",
                                caseSensitive: true,
                              );
                              if (email.isEmpty) {
                                emailErrorText='*Enter Email';
                                emailProvided=false;
                              }
                              else if (!email.contains('@')) {
                                emailErrorText='*Email should contain @ ';
                                emailProvided= false;
                              }
                              else if (!email.contains('.')) {
                                emailErrorText="Email should contain '.'";
                                emailProvided=false;
                              }
                              else if (email.contains(' ')) {
                                emailErrorText = 'invalid character found';
                                emailProvided = false;
                              }
                              else if (regExp.hasMatch(email)) {
                                emailErrorText=null;
                                emailProvided= true;
                              }
                            });


                          },
                          obscureText: false,
                        ),
                        SizedBox(
                            height:25.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, bottom: 10),
                          child: Text(
                            "Password",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),
                          ),
                        ),

                        TextFormField(
                          controller: _password,
                          enabled: true,
                          decoration: InputDecoration(
                              hintText: "Enter your Password",
                              errorText: (passwordProvided)?null:passwordErrorText,
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
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
                              Icons.lock,
                              color: Colors.grey,
                            ),
                          ),
                          onTap: () {},
                          onChanged: (password) {

                            print(password);
                            setState(() {
                              int Length = 8;
                              bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
                              bool hasDigits = password.contains(new RegExp(r'[0-9]'));
                              bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
                              bool hasMinLength = password.length > Length;

                              if(hasDigits & hasUppercase & hasLowercase & hasMinLength)
                              {
                                passwordErrorText='Password constrains satisfied';
                                passwordProvided= true;
                              }
                              else if(password.isEmpty)
                              {
                                passwordErrorText='*Enter Password';
                                passwordProvided= false;
                              }
                              else if(!hasUppercase)
                              {
                                passwordErrorText='*Password should contain an upper case letter';
                                passwordProvided= false;
                              }
                              else if(!hasDigits)
                              {
                                passwordErrorText='*Password should contain a digit';
                                passwordProvided= false;
                              }
                              else if(!hasLowercase )
                              {
                                passwordErrorText='*Password should contain an lower case letter';
                                passwordProvided= false;
                              }
                              else if(!hasMinLength)
                              {
                                passwordErrorText='*minimum length should be 8 ';
                                passwordProvided= false;
                              }
                            });
                            print(passwordProvided);

                          },
                          obscureText: true,
                        ),
                        Container(
                          alignment: Alignment(1.0, 0.0),
                          padding: EdgeInsets.only(top: 15.0, left: 20.0),
                          child: InkWell(
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                           onTap:(){},
                           /* onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => forgot_password()));
                            },*/
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
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

                                if(emailProvided && passwordProvided) {
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => navBar()));
                                  print('Verifying Worker');
                                  Toast.show("Verified", context,
                                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                                }

                                else if(!emailProvided && !passwordProvided){
                                  Toast.show("invalid Email and Password", context,
                                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                                }
                                else if(emailProvided){
                                  Toast.show("invalid Password", context,
                                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

                                }
                                else
                                  Toast.show("invalid Email", context,
                                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
//                        AuthService().login(_email.text, _password.text).then((val) {
//                          if(val?.data['success']?? ''){
//                            token = val.data['token'];
//                            Fluttertoast.showToast(
//                              msg: 'Authenticated',
//
//                              gravity: ToastGravity.BOTTOM,
//                              backgroundColor: Colors.green,
//                              textColor: Colors.white,
//                              fontSize: 16.0,
//                            );
//                            Navigator.pop(context);
//
//                          }
//                        });
                              },
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                  ),
                  ),
                ),

              ],
            ),
          ),
          ),

    );

  }
}
