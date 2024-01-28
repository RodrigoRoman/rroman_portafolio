import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';

BlogItem flutterArchitecture = BlogItem(
    blogOverview: BlogOverview(
        date: "20 June 2023",
        image: AppAssetNames.flutterArchitecture,
        title: "Flutter Architecture",
        description:
            "This post explores the architecture of an app using the Flutter framework. It highlights the System Embedder's role in interfacing with different operating systems and the Flutter Engine's responsibility for graphic representation and app execution. The Dart Framework, written in the Dart language, offers a layered structure for app development, including widgets, rendering, and platform-specific libraries. Together, these components provide a comprehensive foundation for creating and running Flutter applications."),
    blogContent: Container());
