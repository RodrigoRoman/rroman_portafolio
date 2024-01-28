import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/blog_posts/blog_post_screen.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';
import 'package:news/screens/main/components/text_components/text_headline_tertiary.dart';
import 'package:news/screens/main/components/widget_components/action_button.dart';
import 'package:news/screens/routes/app_router.dart';

import '../../../constants.dart';

class BlogPostCard extends StatelessWidget {
  final BlogOverview blog;
  final BlogItem blogPost;
  const BlogPostCard({Key? key, required this.blog, required this.blogPost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 50 / 31,
            child: Image.asset(blog.image!),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextHeadlineTertiary(text: "Design"),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      blog.date!,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blog.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 32 : 24,
                      fontFamily: "Raleway",
                      color: kDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextBody(text: blog.description ?? ""),
                SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    ActionButton(
                      action: () {
                        AutoRouter.of(context)
                            .push(PostRoute(postContent: blogPost.blogContent));
                      },
                      text: AppConstantStrings.readMore,
                    ),
                    Spacer(),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_thumbs-up.svg"),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_message-square.svg"),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon:
                          SvgPicture.asset("assets/icons/feather_share-2.svg"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
