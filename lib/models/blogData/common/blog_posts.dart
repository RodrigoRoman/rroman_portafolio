import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/models/blogData/ai_ml/convolutional_neural_network.dart';
import 'package:news/models/blogData/ai_ml/linear_regression.dart';
import 'package:news/models/blogData/ai_ml/lstm_neural_network.dart';
import 'package:news/models/blogData/ai_ml/neural_networks.dart';
import 'package:news/models/blogData/ai_ml/recurrent_neural_network.dart';
import 'package:news/models/blogData/flutter/foudations_of_code.dart';
import 'package:news/models/blogData/flutter/flutter_architecture.dart';
import 'package:news/models/blogData/iot/ad_hoc_manet.dart';
import 'package:news/models/blogData/iot/iot_vs_preds.dart';
import 'package:news/models/blogData/iot/mesh_network.dart';

class BlogPosts {
  static List<BlogItem> blogPosts = [
    foundationsOfCodeExcecution,
    neuralNetworks,
    flutterArchitecture,
    linearRegression,
    convolutionalNeuralNet,
    reccurentNeuralNet,
    lstmNeuralNet,
    adHocNetworks,
    meshNetwork,
    iotPreds,
  ];

  static List<BlogOverview> get blogOverviews {
    return blogPosts.map((e) => e.blogOverview).toList();
  }
}
