import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:habbibi_2/views/auth/reset_password_screen.dart';
import 'package:habbibi_2/widgets/screen_background.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  State<ForgotPasswordEmailScreen> createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  int _seconds = 0;
  bool _isTimerActive = false;

  void _startTimer() {
    setState(() {
      _seconds = 59;
      _isTimerActive = true;
    });

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        timer.cancel();
        setState(() {
          _isTimerActive = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
      child: Column(children: [
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
                'Forgot Password',
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.white70)),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return 'Enter a valid email';
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Input 6 digit code',
                  hintStyle: TextStyle(color: Colors.white70),
            suffixIcon: InkWell(
              child: ElevatedButton(
                onPressed: _isTimerActive ? null : _startTimer,
                child: _isTimerActive
                    ? Text('$_seconds s',style: TextStyle(color: Colors.white),)
                    : Text('Send'),
              ),
            ),
          ),

          ),
        ),
      SizedBox(
        height: 20,
      ),
      ElevatedButton(
        onPressed: () {
          Get.offAll(() => ResetPasswordScreen());
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
              'Next',
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
    )
        )
    );
  }
}
