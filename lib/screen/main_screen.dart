import 'package:flutter/material.dart';
import 'package:lightning/const/palette.dart';

import '../const/tabs.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: TABS.length, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TABS.length,
      child: Scaffold(
        body: TabBarView(
          controller: controller,
          children: TABS.map((e) => Center(child: Icon(e.icon))).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Palette.secondary,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.index,
          onTap: (index) {
            controller.animateTo(index);
          },
          type : BottomNavigationBarType.fixed,
          items: TABS
              .map((e) =>
                  BottomNavigationBarItem(icon: Icon(e.icon), label: e.label))
              .toList(),
        ),
      ),
    );
  }
}
