import 'package:flutter/material.dart';
// import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}



class LoginPage extends StatefulWidget{
  const LoginPage ({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // //Android Icon
                // Icon(
                //   Icons.android,
                //   // size: 100,
                // ),


                //Sign in to chat
                SizedBox(height: 145),
                Text(
                  'Sign in to chat.',
                  style: TextStyle(
                    // fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),

                //Quote
                SizedBox(height: 10),
                Text(
                  "Remember to get up & stretch once in a",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                Text(
                  "while - your friends at chat",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                //email textfield
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),


                //Password textfield
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true, //for making text values not appear
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),

                //sign in button
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 105.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        )
                    ),
                  ),
                ),

                //forgot password
                SizedBox(height: 25),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),


                //not a member? register now
                SizedBox(height: 145),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sign up here',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),


              ],),
          ),
        ),
      ),
    );
  }
}
