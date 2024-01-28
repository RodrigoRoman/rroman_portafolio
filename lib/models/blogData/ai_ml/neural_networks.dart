import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/screens/blog_posts/components/image_wrapper.dart';
import 'package:news/screens/blog_posts/components/math_latex/equation_block.dart';
import 'package:news/screens/blog_posts/components/math_latex/inline_math_text.dart';
import 'package:news/screens/blog_posts/components/zoom_image_wrapper.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_primary.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';
import 'package:news/screens/main/components/text_components/text_headline_tertiary.dart';
import 'package:news/screens/main/components/widget_components/github_code_section.dart';
import 'package:news/screens/main/components/widget_components/source_references.dart';

BlogItem neuralNetworks = BlogItem(
    blogOverview: BlogOverview(
        date: "2 July 2023",
        image: AppAssetNames.neuralNetwork,
        title: "Neural Networks: Key principles",
        description:
            """Explore the foundational principles of neural networks. Starting with the forward pass, we delve into how data is processed and predictions are made. We then examine the significance of prediction errors and introduce backpropagation, a key mechanism that identifies the source of these errors. Through iterative adjustments, the network refines its predictions, enhancing its accuracy over time. Gain a deeper understanding of the learning process behind these powerful computational models.."""),
    blogContent: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWrapper(image: AppAssetNames.neuralNetwork),
        TextHeadlinePrimary(text: "Neural Networks: Key principles"),
        TextHeadlineTertiary(text: "What is a neuron?"),
        TextBody(
            text:
                """Throughout history, many human inventions have drawn inspiration from the intricate designs and processes found in nature. For instance, the aerodynamics of airplanes were influenced by the observation of bird flight, and Velcro was inspired by the way certain plant burrs stick to animal fur. In the realm of artificial intelligence (AI), the concept of a neuron is inspired by the biological neuron found in our brains. While artificial neurons differ significantly from their biological counterparts, they do share foundational principles in terms of structure and functionality. Biological neurons and artificial neurons both serve as fundamental units of processing and transmission in their respective systems. In the biological context, dendrites of a neuron receive signals, much like the inputs in an artificial neuron. The cell body processes these signals, akin to the computation done in the artificial counterpart. Finally, the axon of the biological neuron transmits the processed signal to other neurons, mirroring the output of the artificial neuron. While biological neurons deal with complex electrochemical processes, artificial neurons are inspired by this structure to process information in computational models. The essence is that the design of artificial neurons draws inspiration from the natural world, capturing the spirit of information processing seen in biological systems."""),
        TextHeadlineTertiary(text: "Perceptron"),
        TextBody(
            text:
                """The first conceptualization of an artificial neuron was introduced by McCulloch and Walter Pitts. This model of a neuron possesses one or more binary (on/off) inputs and produces a binary output. Essentially, the artificial neuron activates its output when a specified number of its inputs are active."""),
        InlineMathText(
            """Building on this foundational model, Frank Rosenblatt introduced the idea of assigning weights, denoted as [[ w1,w2,...wn ]], to signify the importance of different inputs. The output was then determined by the weighted sum of the inputs, compared against a threshold. If the sum is greater than the threshold the output is 1 and otherwise it is 0."""),
        SizedBox(
          height: 50,
        ),
        EquationBlock(text: r"""y = \begin{cases}
                  1 & \text{if} \sum_{i=1}^{n} w_i \cdot x_i > \text{threshold} \\
                  0 & \text{otherwise} \end{cases}
            """),
        InlineMathText(
            """Where [[x_i]] is the input. This threshold can be reformulated as a bias, leading to:"""),
        EquationBlock(text: r"""y = \begin{cases}
                    1 & \text{if} \sum_{i=1}^{n} w_i \cdot x_i - bias > 0 \\
                    0 & \text{otherwise} \end{cases}
              """),
        TextBody(
            text:
                """The bias can be perceived as a metric indicating how easily the perceptron can be activated to produce an output of 1."""),
        TextBody(
            text:
                """Perceptrons are computationally universal, meaning they can approximate any function given enough resources. This might make them seem analogous to logic gates, but it's essential to understand their distinct characteristics and limitations."""),
        TextBody(
            text:
                """One notable limitation of perceptrons is their insensitivity to minor changes in weight or bias. Only significant alterations can flip the output bit. To address this, an activation function, typically nonlinear like the sigmoid function, was introduced. This allows the neuron to output values between 0 and 1, and also accept input values in the same range. Such enhanced neurons serve as the foundational building blocks for neural networks."""),
        TextBody(
            text:
                """Neural networks are architectures that interconnect multiple artificial neurons to process information in layers. By adjusting the weights and biases during training, these networks can learn to make accurate predictions or classifications based on input data, mimicking the learning process observed in biological neural systems."""),
        TextHeadlineSecondary(text: """Neural Network Learning Cycle"""),
        TextHeadlineTertiary(text: """Forward Pass"""),
        ImageWrapper(image: AppAssetNames.forwardPass),
        TextBody(
            text:
                """The forward pass in a neural network involves feeding input data through the network to produce an output. This input data is introduced as the first layer, often referred to as the input layer. The entire training set can be fed into the network all at once, but in practice, it's more common to use smaller subsets of the data, known as batches. One popular approach is "MiniBatch" training, where random subsets (or chunks) of the training data are used in each iteration."""),
        TextBody(
            text:
                """For each neuron in a layer, the input data is combined with the weights associated with the neuron's connections to produce a weighted sum and a bias is added. This result of this linear operation is then passed through an activation function to produce the neuron's output, which serves as input for the next layer. This process is repeated for each neuron in each layer until the last layer, where the final output or prediction is obtained."""),
        TextBody(text: """Let's break down the process mathematically:"""),
        InlineMathText(
            """Suppose [[z_{i}^h]] represents the output of [[i^{th}]] neuron in layer [[h]], [[w_{ij}]] is the weight connecting the [[i^{th}]] neuron in the layer [[h]] to the [[j^{th}]] neuron in layer [[ h + 1]], and [[f]] is the activation function."""),
        InlineMathText(
            """The weighted sum for the [[j^{th}]] neuron in layer [[h+1]] is:"""),
        EquationBlock(text: r"""a_i^{h+1} = \sum_{i}w_{ij}z_i^h+b_j"""),
        InlineMathText(
            """Where [[b_j]] is the bias for the [[j^{th}]] neuron. The output after applying the activation function is:"""),
        EquationBlock(text: """z_j^{h+1}=f(a_j^{h+1})"""),
        InlineMathText(
            """It's crucial for [[f]] to be a nonlinear function. If it were linear, then no matter how many layers the network has, it would only be able to capture linear relationships in the data. This would defeat the purpose of using deep neural networks, as their strength lies in modeling complex, nonlinear patterns. Simpler models or even single-layer networks (perceptrons) could capture linear patterns without the need for multiple layers."""),
        TextHeadlineTertiary(text: "Computing the Final Layer Outputs"),
        TextBody(
          text:
              """In order to have a sense of how well our model is doing, it's essential to determine the discrepancy between its predictions and the actual outcomes. This discrepancy is often termed as the model's "error" or "loss”. """,
        ),
        InlineMathText(
            r"""At the final layer of our neural network, the output [[z^l]] represents a set of raw scores.While these scores correspond to the number of classes in our problem, they aren't immediately interpretable as class probabilities. To convert these raw scores into meaningful class probabilities, we employ a function that can map any real-valued number into the range [0,1]. For multiclass classification problems, the softmax function is a popular choice. The softmax function is defined as:"""),
        EquationBlock(text: r"""\hat{y_i} = \frac{e^{z_k}}{\sum_{j}e^{z_j}}"""),
        TextBody(
            text:
                """This equation ensures that the sum of the probabilities for all classes equals 1, making them valid probabilities."""),
        TextBody(
            text:
                """Once we have the predicted probabilities, we need a metric to measure how far off our predictions are from the actual labels. This metric is termed the "loss" or "cost" function. One of the most commonly used loss functions for classification tasks is the cross-entropy loss. It's defined as:"""),
        EquationBlock(
            text:
                r"""\mathcal{L_i}= - \sum_{j=1}^{\#Classes}y_j \ln(\hat{y_i})"""),
        TextBody(
            text:
                """If the true labels are one-hot encoded (meaning for each instance, the true class is represented by a '1' and all other classes by '0s'), the above loss function simplifies to:"""),
        EquationBlock(
            text:
                r"""\mathcal{L_i} = - \ln(\hat y_{k})=- \ln(\frac{e^{z_k}}{\sum_{j}e^{z_j}})"""),
        ImageWrapper(image: AppAssetNames.logFct),
        InlineMathText(
            r"""The beauty of the cross-entropy loss is in its interpretation. When the predicted probability [[\hat{y}]]  for the true class is close to 1, the loss approaches 0, indicating a good model prediction. Conversely, if [[\hat{y}]]  is close to 0, the loss increases significantly, highlighting a poor prediction."""),
        TextBody(
            text:
                """In essence, by computing the final layer outputs and evaluating them using the cross-entropy loss, we obtain a clear measure of our model's performance, guiding further optimizations."""),
        TextHeadlineSecondary(text: "BACKWARD PASS"),
        ImageWrapper(image: AppAssetNames.backwardPass),
        TextHeadlineTertiary(text: "Compute the gradient of the last layer:"),
        InlineMathText(
            r"""To calculate the gradient of the last layer, we need to trace the steps from the scores of the last layer in the neural network, denoted as [[z^l]],to the final loss. This process involves two key components: the softmax [[f]] function and the cross-entropy loss [[\mathcal{L}]]. To compute [[\frac{\partial \mathcal{L}}{\partial z^l}]] we’ll  combine the softmax and cross-entropy components:"""),
        InlineMathText(
            r"""First, let's recall the cross-entropy loss for a single data point [[i]]:"""),
        EquationBlock(
            text:
                r"""\mathcal{L_i} = - \ln(\hat y_{k})=- \ln(\frac{e^{z_k}}{\sum_{j}e^{z_j}})"""),
        EquationBlock(
            text:
                r"""\mathcal{L_i} = -[\ln{e^z_k} - ln({\sum_{j=1}^{\#classes}e^{z_j}})] = \ln({\sum_{j=1}^{\#classes}e^{z_j}}) - z_k"""),
        InlineMathText(
            r"""Now, let's derive the gradient with respect to [[z_i^l]]:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial z_i} = \frac{\partial \ln({\sum_{j=1}^{\#classes}e^{z_j}}) - z_k}{\partial z_i} = \frac{\partial \ln(\sum_{j=1}^{\#classes}e^{z_j})}{\partial z_i}-\frac{\partial z_k}{\partial z_i}"""),
        InlineMathText(
            r"""Notice that [[\frac{\partial z_k}{\partial z_i}]] is a Kronecker Delta, which equals 1 when [[i = k]] and 0 otherwise. Now lets focus on  [[\frac{\partial \ln(\sum_{j=1}^{\#classes}e^{z_j})}{\partial z_i}]]. Let [[S]] represent the sum in the softmax function [[S = \sum_{j=1}^{\#classes}e^{z_j^l}]]"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial z_i} = \frac{1}{S}\cdot \frac{\partial S}{\partial z_i}"""),
        InlineMathText(
            r"""Now let’s find [[\frac{\partial \mathcal{S}}{\partial z_i^l}]]:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{S}}{\partial z_i^l} = \frac{\partial}{\partial_{z_i^l}}\cdot \ln(\sum_{j=1}^{\#classes}e^{z_j^l}) """),
        InlineMathText(
            r"""Since S does not depend on [[z_i^l]]  except when [[j=i]] we can simplify this derivative: """),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{S}}{\partial z_i^l} = \frac{\partial}{\partial_{z_i^l}}\cdot (e^{z_i^l}) = e^{z_i^l}"""),
        InlineMathText(
            r"""Now, when we substitute this result back into the expression, we can clearly observe that it simplifies to the value produced by the Softmax function, which is [[\hat{y}_i]]:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial z_i^l} = \frac{1}{S}\cdot e^{z_i^l} = \frac{1}{\sum_{j=1}^{\#classes} e^{z_j^l}}\cdot e^{z_i^l} = \hat{y_i} """),
        InlineMathText(
            r"""Finally, Kronecker Delta can be interpreted and as y. Thus, we can express [[\frac{\partial \mathcal{L}}{\partial z_i}]] as:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial z_i} = \hat{y}_i - y"""),
        TextBody(
            text:
                """This represents the gradient of the loss with respect to the last layer scores."""),
        TextHeadlineTertiary(text: """Gradient of hidden layers"""),
        TextBody(
            text:
                """In our algorithm's implementation, creating a mechanism to capture and record each computation executed during the forward pass, works as a registry that serves as a map. This will enable us to trace the origins of errors at each layer in the following step of our model. Additionally, this analysis is instrumental in getting to know the distinct roles that each component plays in shaping the overall process."""),
        TextBody(
            text:
                """In contrast, our approach to handling errors in the hidden layers deviates significantly from our methodology for the last layer. Specifically, we are not able to directly compute the error contribution of these hidden layers to the overall model error. To tackle this challenge, we make use of the chain rule, a foundational calculus principle, to deduce how each layer has propagated and possibly magnified the error. This requires us to employ the derivatives of the functions utilized during the forward pass, ensuring they are correctly aligned with the relevant variables. Through this methodical process, we can successfully backpropagate errors and gain deeper understanding into the shade of each layer's performance and influence on the final output."""),
        InlineMathText(
            r"""The error term for a neuron in the hidden layer [[\delta^l]] quantifies how much the neuron contributed to the final error. This is computed as:"""),
        EquationBlock(text: r"""\delta^l = (w^la^{l-1}+b) f'(z^l)"""),
        InlineMathText(
            r"""The idea here is that the error from the subsequent layer (the output layer in this case) is back-propagated to the current hidden layer, but it's modulated by two factors. The weight [[w]], which tell us how much each neuron in the hidden layer contributed to the output's value and derivative of the activation function [[f]], which tells us how sensitive the neuron's output is to its input."""),
        InlineMathText(
            r"""Once we have the error term [[\delta^l]], you can compute the gradients for the weights and biases that connect the input layer to the hidden layer. For calculating the gradient for the weight we use the following equation:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial w^l}=\frac{\partial \mathcal{L}}{\partial z^l}\frac{\partial z^l}{\partial w^l}"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial b^l}=\frac{\partial \mathcal{L}}{\partial z^l} \cdot a^{l-1}"""),
        TextBody(text: """Similarly for computing the bias we use:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial b^l}=\frac{\partial \mathcal{L}}{\partial z^l}\frac{\partial z^l}{\partial b^l}"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial b^l}=\frac{\partial \mathcal{L}}{\partial z^l}"""),
        InlineMathText(
            """For the input layer, the process is analogous. However, the key difference is that instead of [[a^{l-1}]] we use the input  [[x]] to denote the activations leading into the first layer."""),
        TextHeadlineTertiary(text: """How are the weights updated? """),
        TextBody(
            text:
                """Upon utilizing the chain rule to discern the impact of each neuron on the total error, we derive a gradient for every neuron. This gradient, composed of partial derivatives, signifies the sensitivity of the total error to minute variations in the neuron's output. Armed with this gradient, we can strategically adjust our weights and biases to diminish the error. The optimal strategy is to navigate towards the steepest descent on the error landscape, aligning with the direction of the negative gradient."""),
        TextBody(
            text:
                """To understand how a neural network minimizes its error, let's delve into the mechanics of weight and bias adjustments."""),
        InlineMathText(
            r"""Let [[\mathcal{L}]] be the cumulative error of out model. This error is influenced by the model’s parameter, which include weights and biases, collectively represented by [[v]]. Now, a slight tweak in [[v]] will introduce a change in [[\mathcal{L}]], which can be captured by equation:"""),
        EquationBlock(
            text: r"""\Delta \mathcal{L} = \nabla \mathcal{L}*\Delta v"""),
        InlineMathText(
            r"""Where [[\Delta \mathcal{L}]] denotes the change in error [[\mathcal{L}]]. For any specific weight or bias of a neuron, say [[v_i]], the change in [[\mathcal{L}]] due to this particular parameter is:"""),
        EquationBlock(
            text:
                r"""\Delta \mathcal{L} = \sum_i{\frac{\partial C}{\partial v_i}\nabla v_i}"""),
        InlineMathText(
            r"""This mathematical representation offers a roadmap to minimize [[\mathcal{L}]]. We should adjust [[v]] in a direction that makes [[\Delta \mathcal{L}]] negative."""),
        InlineMathText(
            r"""To achieve this, we can set [[\Delta v]] to be the negative of the gradient scaled by a factor, the learning rate [[\alpha]]:"""),
        EquationBlock(text: r""" \Delta v = -\alpha \nabla \mathcal{L}"""),
        InlineMathText("""Substituting this in our change equation, we get:"""),
        EquationBlock(
            text:
                r"""\Delta \mathcal{L}= -\alpha \nabla \mathcal{L} *\nabla \mathcal{L}"""),
        InlineMathText(
            r"""Given the squared magnitud of the gradient [[\left\| \nabla E\right\|^2 ]] is always non-negative, this guarantees that [[\Delta \mathcal{L}]] is always decreasing. """),
        TextBody(
            text:
                """So, the essence of the weight and bias update strategy is:"""),
        EquationBlock(text: r"""v→v’=v- \alpha \nabla \mathcal{L}"""),
        TextBody(
            text:
                """Applying this iteratively, the model gravitates towards a minimum error."""),
        InlineMathText(
            r"""To understand how gradient descent operates in neural networks, lets express the update rules in terms of the network’s weights and biases, replacing the generic [[v_i]] vectors. Now, each weight is denoted by [[w_{jk}^{l}]] and each bias by [[b_{j}^{l}]], where [[l]] is the layer, [[j]] is the neuron in layer [[l]], and [[k]] is the neuron from the previous layer [[l-1]] connected to [[j]]."""),
        TextBody(
            text:
                """The gradient descent update rules can be formulated as:"""),
        EquationBlock(
            text:
                r"""w_{jk}^{new}→w_{jk}^{old}=w_k- \alpha \frac{\partial \mathcal{L}}{\partial w_{jk}^{old}}"""),
        EquationBlock(
            text:
                r"""b_{jk}^{new}→b_{jk}^{old}=b_k- \alpha \frac{\partial \mathcal{L}}{\partial b_{jk}^{old}}"""),
        InlineMathText(
            r"""A similar methodology applies to the bias update, with the bias being influenced by the error term  [[\delta_j^l]] of its associated neuron."""),
        TextBody(
            text:
                """In conclusion, training a neural network is an iterative process that seeks to minimize prediction errors. It begins with a forward pass where input data is processed through the network to produce an output. The discrepancy between this output and the actual target is then quantified using a cost function. Back propagation is employed next to discern how each weight and bias in the network contributed to the error. Based on this understanding, optimization algorithms adjust the weights and biases to reduce the error. This cycle—forward pass, error computation, backpropagation, and weight updates—repeats until the network's predictions converge to an optimal solution or a set number of iterations is reached. Through this methodical refinement, the neural network becomes better equipped to make accurate predictions on new, unseen data."""),
        Divider(),
        TextHeadlineSecondary(text: "Bibliography"),
        Container(
            padding: kMarginVertical48,
            height: (kMarginBottom48.bottom * 8) + 100 * 1,
            child: Column(
              children: [
                SourceReferences(
                    name: "Back-propagation",
                    source: """https://brilliant.org/wiki/backpropagation"""),
                SourceReferences(
                    name: "Neural networks",
                    source:
                        """http://neuralnetworksanddeeplearning.com/chap2.html"""),
                SourceReferences(
                    name: "Neural networks",
                    source:
                        """Machine Learning with Pytorch and Scikit-Learn - Sebastian Raschka, Yuxi Liu, Vahid Mirjalili"""),
                SourceReferences(
                    name: "Special thanks to Ph.D. Jose Cantoral",
                    source:
                        """https://youtu.be/ftlqZwb33SE?si=ZoBLQP7dFgRpxgbK""")
              ],
            )),
        Divider(),
        TextHeadlineSecondary(text: "Code implementations"),
        GitHubCodeSection(
            svg: AppAssetNames.githubIcon,
            name: "Fully connected neural network - Pure Numpy",
            bio:
                "https://github.com/RodrigoRoman/FullyConnectedNN/blob/main/FullyConnectedNN_Numpy.ipynb")
      ],
    ));
