import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<Map<String, dynamic>> items = [
    {
      'iconPath': 'assets/icons/lucky_bag.png', 'label': 'Lucky Bag',},
    {'iconPath': 'assets/icons/mic_pk.png', 'label': 'Mic pk'},
    {'iconPath': 'assets/icons/event_center.png', 'label': 'Event center'},
    {'iconPath': 'assets/icons/lucky_number.png', 'label': 'Lucky Number'},
    {'iconPath': 'assets/icons/settings.png', 'label': 'Setting'},
    {'iconPath': 'assets/icons/lucky_fruit.png', 'label': 'Lucky fruit'},
    {'iconPath': 'assets/icons/private_room.png', 'label': 'Privet room'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: _ontapMenuButton, child: Text('Show Menu')),
      ),
    );
  }

  void _ontapMenuButton() {
    Get.bottomSheet(
      Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Party',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/achievement.png',
                        height: 35,
                        width: 35,
                      ))
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.to(item['route']);
                          },
                          icon: Image.asset(
                            item['iconPath'],
                            height: 40,
                            width: 40,
                          )),
                      Text(item['label'])
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
