import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/routes/app_router.dart';

import '../social.dart';
import '../web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      SvgPicture.asset(
                        AppAssetNames.mainIcon,
                        height: AppSizes.mainIconHeight,
                        width: AppSizes.mainIconWidth,
                      ),
                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // Socal
                      Socal(),
                    ],
                  ),
                  (AutoRouter.of(context).current.name == MainRoute.page.name)
                      ? SizedBox(height: kDefaultPadding * 2)
                      : SizedBox.shrink(),
                  (AutoRouter.of(context).current.name == MainRoute.page.name)
                      ? Text(
                          AppConstantStrings.welcomeStatement,
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : SizedBox.shrink(),
                  (AutoRouter.of(context).current.name == MainRoute.page.name)
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Text(
                            AppConstantStrings.menuIntro,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              height: 1.5,
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  (AutoRouter.of(context).current.name == MainRoute.page.name)
                      ? FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  AppConstantStrings.modeInfo,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: kDefaultPadding / 2),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  if (Responsive.isDesktop(context))
                    SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
