import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habbibi_2/views/home/search_bar_screen.dart';
import 'package:habbibi_2/widgets/screen_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Container(
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
                width: 300,
              ),
              IconButton(onPressed: (){
                Get.to(() => SearchBarScreen());
              }, icon: Icon(Icons.search_rounded)),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_home_outlined)),
            ],
          ),
        ),
      ),
    );
  }
}
