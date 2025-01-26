import 'package:flutter/material.dart';
import 'package:habbibi_2/widgets/screen_background.dart';
import 'package:get/get.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ScreenBackground(
  child: Column(
    children: [
      SizedBox(height: 60,),
  Row(
    children: [
      SizedBox(width: 20,),
      IconButton(onPressed: onTapBackButton, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      SizedBox(
        width: 260,
        child: TextField(
          decoration: InputDecoration(
          hintText: "Enter ID",
          hintStyle: TextStyle(color: Color(0xFF74CADB),fontSize: 20),
          prefixIcon: Icon(Icons.search_rounded,color: Color(0xFF74CADB)),
          border: OutlineInputBorder()),
            ),
      ),
      SizedBox(width: 20,),
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          fixedSize: Size(75, 53)
        ),
          child: Text('Search',style: TextStyle(color: Color(0xFF74CADB),fontSize: 16,wordSpacing: 2),),)
    ],
  ),

   ] )
    )
    );
  }

  void onTapBackButton() {
    Get.back();
  }
}
