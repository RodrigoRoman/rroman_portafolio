import 'dart:html';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/screens/main/components/widget_components/layout/footer.dart';
import 'package:news/screens/main/components/widget_components/layout/header.dart';
import 'package:news/screens/main/components/widget_components/layout/side_menu.dart';

@RoutePage()
class PostScreen extends StatelessWidget {
  static const String name = 'post';
  Widget postContent;

  PostScreen({required this.postContent, Key? key}) : super(key: key);
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: EdgeInsets.all(kDefaultPadding),
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: SafeArea(child: postContent),
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
