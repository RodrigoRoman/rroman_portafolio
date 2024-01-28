import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFB4C7D1);
const kDarkBlackColor = Color(0xFF474747);
const kBgColor = Color(0xFFE7E7E7);
const kBodyTextColor = Color(0xFF666666);
const kBgQuoteColor = Color.fromARGB(39, 166, 224, 166);
const kBorderQuoteColor = Color.fromARGB(210, 166, 224, 166);

const kDefaultPadding = 20.0;
const kMaxWidth = 1232.0;
const kDefaultDuration = Duration(milliseconds: 250);

const kMarginBottom12 = EdgeInsets.only(bottom: 12.0);
const kMarginBottom24 = EdgeInsets.only(bottom: 24.0);
const kMarginBottom48 = EdgeInsets.only(bottom: 48.0, top: 48.0);

const kMarginTitle = EdgeInsets.only(bottom: 12.0, top: 24.0);

const kMarginVertical12 = EdgeInsets.only(bottom: 12.0, top: 12.0);
const kMarginVertical24 = EdgeInsets.only(bottom: 24.0, top: 24.0);
const kMarginVertical48 = EdgeInsets.only(bottom: 48.0, top: 48.0);

const kMarginAll24 = EdgeInsets.all(24.0);

//String Constants
class AppConstantStrings {
  static String appName = "Rodrigo Roman Portafolio";
  static String welcomeStatement = "Welcome to my portafolio";
  static String menuIntro =
      "Dive into the world of AI/ML and Flutter with me. Here, I share insights from cutting-edge AI research and my experiences with Flutter app development. Don't forget to check out my portfolio, showcasing my standout projects in both domains. Join me on this tech journey! ";
  static String modeInfo = "Ver mas";
  static String readMore = "Read more";
}

//Menu Sections
class AppMenuSections {
  static String contact = "Blog";
  static String flutterPortafolio = "Flutter-Projects";
  static String aiPortafolio = "AI/ML-Projects";
  static String aboutMe = "About Me";

  static List<String> menuSections = [
    contact,
    flutterPortafolio,
    aiPortafolio,
    aboutMe
  ];
}

class AppAssetNames {
  static String iconPath = "icons";
  static String imgPath = "images";

  //Icons
  static String mainIcon = "$iconPath/logo_rroman.svg";
  static String githubIcon = "$iconPath/github.svg";

  //Blog posts
  static String foundations =
      "$imgPath/foundation_excecution/foundations_of_code.jpg";

  // --- Fluter ---
  static String flutterArchitecture = "$imgPath/flutter_architecture.jpg";
  static String dartCompilation = "$imgPath/dart_compilation.jpg";

  // --- AI/ML ---
  static String linearRegression = "$imgPath/linear_regression.jpg";
  static String neuralNetwork = "$imgPath/neural_network/neural_net_gen.jpg";
  static String forwardPass = "$imgPath/neural_network/forward_pass.jpg";
  static String backwardPass = "$imgPath/neural_network/backward_pass.jpg";
  static String logFct = "$imgPath/neural_network/log_fct.png";
  static String receptiveField =
      "$imgPath/neural_network/cnn_receptive_field.jpg";
  static String convolutionFiltered =
      "$imgPath/neural_network/convolution_cnn.jpg";
  static String convolutionNeuralNet =
      "$imgPath/neural_network/convolutional_neural_net.png";
  static String recurrentNeuralNet =
      "$imgPath/neural_network/recurrent_neural_net.png";
  static String rnnDiagram = "$imgPath/neural_network/rnn_light.jpg";
  static String lstmCell = "$imgPath/neural_network/lstm_cell.jpg";
  static String lstmNeuralNet = "$imgPath/neural_network/lstm_neural_net.png";

  // --- IOT ---
  //MANET
  static String manet = "$imgPath/iot/manet/manet.jpg";
  static String manetMilitary = "$imgPath/iot/manet/manet_militar.jpg";

  //MESH
  static String meshNetwork = "$imgPath/iot/mesh_net/mesh_portrait.jpg";
  static String meshNetworkComponents =
      "$imgPath/iot/mesh_net/mesh_network.png";
  static String meshHouse = "$imgPath/iot/mesh_net/mesh_house.png";
}

class AppSizes {
  static double mainIconWidth = 350;
  static double mainIconHeight = 250;
}
