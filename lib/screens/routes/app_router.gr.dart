// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainScreen(),
      );
    },
    PostRoute.name: (routeData) {
      final args = routeData.argsAs<PostRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PostScreen(
          postContent: args.postContent,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PostScreen]
class PostRoute extends PageRouteInfo<PostRouteArgs> {
  PostRoute({
    required Widget postContent,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PostRoute.name,
          args: PostRouteArgs(
            postContent: postContent,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static const PageInfo<PostRouteArgs> page = PageInfo<PostRouteArgs>(name);
}

class PostRouteArgs {
  const PostRouteArgs({
    required this.postContent,
    this.key,
  });

  final Widget postContent;

  final Key? key;

  @override
  String toString() {
    return 'PostRouteArgs{postContent: $postContent, key: $key}';
  }
}
