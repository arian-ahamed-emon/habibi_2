
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habbibi_2/views/navigation/home_screen.dart';
import 'package:habbibi_2/views/home/main_bottom_navbar_screen.dart';
import 'package:habbibi_2/widgets/screen_background.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isToggleClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Column(
          children: [
            Container(
              height: 55,
              width: Get.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'Email login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                obscureText: !isToggleClicked,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(
                        isToggleClicked
                            ? FontAwesomeIcons.eye
                            : FontAwesomeIcons.eyeSlash,
                        color: Colors.white70,
                        size: 18,
                      ),
                      onTap: () {
                        setState(() {
                          if (isToggleClicked) {
                            isToggleClicked= false;
                          } else {
                            isToggleClicked= true;
                          }
                        });
                      },
                    ),
                    hintText: 'Enter new password',
                    hintStyle: const TextStyle(color: Colors.white70)),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter a valid password';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                obscureText: !isToggleClicked,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(
                        isToggleClicked
                            ? FontAwesomeIcons.eye
                            : FontAwesomeIcons.eyeSlash,
                        color: Colors.white70,
                        size: 18,
                      ),
                      onTap: () {
                        setState(() {
                          if (isToggleClicked) {
                            isToggleClicked= false;
                          } else {
                            isToggleClicked= true;
                          }
                        });
                      },
                    ),
                    hintText: 'Retype password',
                    hintStyle: const TextStyle(color: Colors.white70)),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter a valid  password';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => MainBottomNavbarScreen());
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/el_button_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 200, maxHeight: 50),
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ]
        ),
      ),
    );
  }
}
