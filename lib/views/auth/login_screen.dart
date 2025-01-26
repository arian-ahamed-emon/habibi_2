import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:habbibi_2/views/auth/login_with_email_screen.dart';
import 'package:habbibi_2/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String dropDownValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Column(children: [
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.all(16),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.black38,
              child: Container(
                width: 100,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButton<String>(
                  value: dropDownValue,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 20,
                  ),
                  dropdownColor: Colors.grey[900],
                  underline: const SizedBox(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  },
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'English',
                      child: Text(
                        'English',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Bangla',
                      child: Text(
                        'Bangla',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Hindi',
                      child: Text(
                        'Hindi',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:
            Container(
              //color: Colors.white,
              height: 240,
              width: Get.width,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    color: Color(0xFF009CED),
                    height: 56,
                    child: Row(
                      children: [
                        Container(
                          color: Color(0xFF009CED),
                          width: 18,
                          height: 53,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.black12,
                            height: 35,
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Image.asset(
                                  'assets/icons/insta.png',
                                  height: 30,
                                  width: 40,
                                ),
                                SizedBox(width: 60),
                                Text(
                                  'Instagram',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Color(0xFF009CED),
                          width: 18,
                          height: 53,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 14,),
                  Container(
                    color: Color(0xFF009CED),
                    height: 56,
                    child: Row(
                      children: [
                        Container(
                          color: Color(0xFF009CED),
                          width: 18,
                          height: 53,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.black12,
                            height: 35,
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Image.asset(
                                  'assets/icons/fb.png',
                                  height: 30,
                                  width: 40,
                                ),
                                SizedBox(width: 60),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Color(0xFF009CED),
                          width: 18,
                          height: 53,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 14,),
                  Container(
                    color: Color(0xFF009CED),
                    height: 56,
                    child: Row(
                      children: [
                        Container(
                          color: Color(0xFF009CED),
                          width: 18,
                          height: 53,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.black12,
                            height: 35,
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Image.asset(
                                  'assets/icons/google.png',
                                  height: 30,
                                  width: 40,
                                ),
                                SizedBox(width: 60),
                                Text(
                                  ' Google',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Color(0xFF009CED),
                          width: 18,
                          height: 53,
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              child: Row(
                children: [
                  SizedBox(height: 49,),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      endIndent: 20,
                    ),
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      indent: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Get.to(() => LoginWithEmailScreen());
              },
              child: Container(
                height: 50,
                width: 100,
                child: Center(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: Icon(
                          Icons.login,
                          color: Color(0xFF4E8A96),
                          size: 24,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            wordSpacing: 2),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By continuing, you agree to ',
                  style: TextStyle(
                    color: Color(0xFF4E8A96),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Terms of Service\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {

                        },
                    ),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(
                        color: Color(0xFF4E8A96),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
