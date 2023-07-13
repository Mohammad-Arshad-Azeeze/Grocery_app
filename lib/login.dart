import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                    width: 298,
                    height: 333,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/splash/splash.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: Text(" Username"),
                    hintText: 'Enter a valid username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.perm_identity_outlined,
                        color: Colors.grey,
                      ), // icon is 48px widget.
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: PasswordField()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: Text(
                    textAlign: TextAlign.end,
                    'Forgot Password ?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 20, bottom: 0),
              child: Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Dashboard()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100, right: 0, top: 0, bottom: 0),
              child: Row(children: [
                Text('Don’t have an account ? ',textAlign: TextAlign.center),
                TextButton(
                    onPressed: () {},
                    child: Text("Sign up",textAlign: TextAlign.start),
                ),
              ]),
            ),
            Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
              child: Text("Or",textAlign: TextAlign.center),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                onPressed: (){},
                    icon:Image.asset('assets/icon/google.png')
                ),
                IconButton(
                    onPressed: (){},
                    icon:Image.asset('assets/icon/facebook.png')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If  focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      focusNode: textFieldFocusNode,
      decoration: InputDecoration(
        label: Text("Password"),
        hintText: "Enter a strong password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), // Apply corner radius
        ),
        prefixIcon: Icon(Icons.lock_rounded, size: 24),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}