import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class forgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: forgotPasswordScreen(),
    );
  }
}

class forgotPasswordScreen extends StatefulWidget {
  @override
  _forgotPasswordScreenState createState() => _forgotPasswordScreenState();
}

class _forgotPasswordScreenState extends State<forgotPasswordScreen> {
  bool emailProvided = false;
  String emailErrorText;
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.0, MediaQuery.of(context).size.height * 0.06, 0.0, 20.0),
                child: Text(
                  "Forgot Your Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              //  height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0, left: 15, right: 20.0),
              child: Text(
                'Enter Your Email and we will send you a link to reset your password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,),
              child: Text("Email",
                textAlign: TextAlign.start,

                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextFormField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
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
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                height: 50.0,
                //width: 150,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.black,
                  color: Colors.black,
                  elevation: 7.0,
                  child: MaterialButton(
                    onPressed: () {
                      if(emailProvided)
                        Toast.show("Email send", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      else
                        Toast.show("Please Provide Email", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

                    },
                    child: Center(
                      child: Text(
                        'Send Link',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
