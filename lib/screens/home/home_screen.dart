import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/models/blogData/common/blog_posts.dart';
import 'package:news/responsive.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              BlogPosts.blogOverviews.length,
              (index) => BlogPostCard(
                blog: BlogPosts.blogOverviews[index],
                blogPost: BlogPosts.blogPosts[index],
              ),
            ),
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
