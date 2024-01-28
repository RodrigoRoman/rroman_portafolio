import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:news/screens/home/home_screen.dart';
import 'package:news/screens/main/components/widget_components/layout/header.dart';
import 'package:news/screens/main/components/widget_components/layout/side_menu.dart';

import '../../constants.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  // final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
