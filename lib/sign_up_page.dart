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
  bool isChecked = false;
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

                //Sign up chat.
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign up to chat',
                        style: TextStyle(
                          // fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),

                      //.
                      Text(
                        '.',
                        style: TextStyle(
                          // fontFamily: 'BebasNeue',
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                    ],
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

                //Email text
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    // padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                    ),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        )
                    ),
                  ),
                ),

                //Email textfield

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),

                //password text
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    // padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                    ),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        )
                    ),
                  ),
                ),


                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    obscureText: true, //for making text values not appear
                    decoration: InputDecoration(
                      // border: InputBorder.none,
                      hintText: 'Password',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                //checkbox 1 & checkbox 1 text
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        "Yes, I want to receive promotional emails ",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                ),


              //checkbox 2 & checkbox 2 text
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          // color: Colors.green,
                          child: Row(
                            children: [
                              Text(
                                "I agree with the ",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Terms and Conditions',
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          // color: Colors.green,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  " and the ",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),




              //sign up button
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

                //already have an account
                SizedBox(height: 145),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sign in here',
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
