import 'package:facebook/screens/About.dart';
import 'package:facebook/screens/characters.dart';
import 'package:facebook/screens/hire_me.dart';
import 'package:facebook/screens/in_my_life.dart';
import 'package:facebook/screens/home_screen.dart';
import 'package:facebook/screens/moments.dart';
import 'package:facebook/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = const [
    HomeScreen(),
    MomentsMovie(),
    HireMe(),
    AboutMovie(),
    InMyLife(),
    CharactersMovie()
  ];

  final List<IconData> icons = const [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: icons.length,
      child: Scaffold(
        backgroundColor: Colors.white, // Cambia el color de fondo aquí
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: CustomTabBar(
            icons: icons,
            selectedIndex: selectedIndex,
            onTap: (index) => setState(() => selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
