import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';

BlogItem linearRegression = BlogItem(
    blogOverview: BlogOverview(
        date: "2 July 2023",
        image: AppAssetNames.linearRegression,
        title: "Linear Regression",
        description:
            """Linear regression, a foundational concept in statistics and machine learning, offers a way to model and analyze the relationships between a dependent variable and one or more independent variables. At its core, linear regression seeks to fit a linear equation to observed data. This blog will delve into the intricacies of linear regression, from its basic formula to more advanced topics like the cost function and gradient descent. Along the way, we'll demystify terms like "dependent vs. independent variables" and "irreducible error." Whether you're a seasoned data scientist or a curious beginner, this comprehensive guide aims to deepen your understanding of linear regression and its applications in the world of data analysis."""),
    blogContent: Container());
