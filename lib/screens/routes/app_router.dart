import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/blog_posts/blog_post_screen.dart';
import 'package:news/screens/main/main_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true),
        AutoRoute(page: PostRoute.page)
      ];
}
