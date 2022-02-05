import 'package:app_pure/screens/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:app_pure/screens/home/home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    // ignore: empty_catches
    } catch (e) {
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/bg.png')
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Sign in to continue',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  Text('Pure Powders',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.grey.shade800,
                        shadows: [
                          BoxShadow(
                           blurRadius: 20,
                           color: Colors.grey.shade900,
                           offset:  Offset(2,2),
                          )
                        ]
                      ),
                  ),

                    // with custom text
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {
                          _googleSignUp().then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen(),),),);
                        },
                      ),
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                          'By Signing in you are agreeing to our',
                           style: TextStyle(
                             color: Colors.grey[600],
                           ),
                      ),
                      Text(
                        'Terms and Privacy Policy',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
