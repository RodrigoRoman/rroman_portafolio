import 'package:flutter/material.dart';
import 'package:news/models/BlogOverview.dart';

class BlogItem {
  final BlogOverview blogOverview;
  final Widget blogContent;
  BlogItem({required this.blogOverview, required this.blogContent});
}
