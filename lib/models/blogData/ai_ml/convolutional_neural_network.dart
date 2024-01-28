import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/screens/blog_posts/components/image_wrapper.dart';
import 'package:news/screens/blog_posts/components/math_latex/equation_block.dart';
import 'package:news/screens/blog_posts/components/math_latex/inline_math_text.dart';
import 'package:news/screens/main/components/text_components/text_block_quote.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_primary.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';
import 'package:news/screens/main/components/text_components/text_headline_tertiary.dart';
import 'package:news/screens/main/components/widget_components/github_code_section.dart';
import 'package:news/screens/main/components/widget_components/source_references.dart';

BlogItem convolutionalNeuralNet = BlogItem(
    blogOverview: BlogOverview(
        date: "5 November 2023",
        image: AppAssetNames.convolutionNeuralNet,
        title:
            "Convolutional neural network: A Guide to CNN Structures and Operations",
        description:
            """This article delves into the world of Convolutional Neural Networks (CNNs), illuminating their distinctive structure optimized for processing grid-like data such as images. It explains the convolution operation, the basis of CNNs, which enables the network to efficiently extract and recognize features across various layers — from convolutional to pooling to fully connected layers. Through a blend of technical explanations and mathematical equations, the article conveys the underlying principles of CNNs, including sparse interactions, parameter sharing, and translational equivariance, while also discussing the nuances of padding, stride, and backpropagation within these deep learning models. The result is a concise yet comprehensive guide to understanding how CNNs function and learn from visual data."""),
    blogContent: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWrapper(image: AppAssetNames.convolutionNeuralNet),
        TextHeadlinePrimary(
            text:
                "Convolutional neural network: A Guide to CNN Structures and Operations"),
        TextHeadlineTertiary(text: "What is CNN?"),
        TextBody(
            text:
                """Convolutional Neural Networks (CNNs) are a specialized type of neural network designed for working with grid-like data, such as images or other spatial and temporal data. Unlike traditional fully connected neural networks, CNNs do not assign trainable parameters to each input individually. Instead, they use a unique technique called "convolution" which is the key of their efficacy. The convolution operation, allows CNNs to analyze local neighborhoods of data rather than treating every data point in isolation. By doing so, CNNs are excellent at identifying features and hierarchies of patterns within the data, capturing details at different scales, and learning to recognize objects, shapes, and textures with remarkable precision."""),
        TextHeadlineTertiary(text: "Basic structure of a CNN"),
        TextBody(
            text:
                """In a CNN, we encounter three fundamental types of layers that play distinctive roles in the network's architecture: feature map layers, Rectified Linear Unit (ReLU) layers, and pooling layers. Towards the final layers of the CNN architecture, a common practice is to incorporate fully connected layers. These layers are precisely the traditional neural network layers. Each neuron in a fully connected layer is connected to every neuron in the preceding layer. This arrangement allows the network to learn high-level representations and complex patterns by combining the information extracted from the previous layers. This last layers are employed in tasks such as classification or regression, where the network needs to make predictions based on the learned features."""),
        TextHeadlineTertiary(text: "Layer structure of convolutional layers"),
        InlineMathText(
            """In Convolutional Neural Networks (CNNs), both the input and the convolutional layers possess a three-dimensional structure. To illustrate, we can conveniently envision the input image's dimensions as having spatial characteristics, encompassing the first two dimensions as 'width' and 'height' (denoted as [[W]] and [[H]],' respectively). The third dimension, often referred to as 'depth,' corresponds to the color channels: red, green, and blue (R, G, B)."""),

        TextBody(
            text:
                """The spatial dimensions are tasked with capturing spatial relationships within the image, including critical elements like borders, corners, lines, and the presence of objects. In contrast, the depth dimension is dedicated to encapsulating the individual properties of each color channel, thereby preserving the unique details associated with each color component. This three-dimensional organization allows CNNs to effectively process and extract features from images, combining spatial and color information to make sense of visual data"""),
        //
        TextHeadlineTertiary(text: "Convolution operation"),
        ImageWrapper(image: AppAssetNames.convolutionFiltered),

        InlineMathText(
            """The parameters of a CNN are structured into sets referred to as 'kernels,' which are characterized by three dimensions. The depth of these kernels consistently matches the depth of the layer to which they are applied. Meanwhile, the spatial dimensions, often denoted as [[F_q]], are typically set to values like 3 or 5. This configuration results in kernels with dimensions of 3x3x[[c]], where [[c]] represents the depth or the number of channels within the layer."""),
        InlineMathText(
            """ The convolution operation in a Convolutional Neural Network (CNN) involves placing a filter over each position of the input image in such a way that the filter overlaps with the image. This overlap allows the filter to perform a dot product operation between its set of parameters, which has dimensions [[F_q \times F_q \times d_q]], and the corresponding portion of the image. The result of each dot product operation becomes the output of the next layer, referred to as a feature map. The number of positions where these dot product operations are performed determines the number of features in the feature map. In essence, the number of alignments of the filter in the input layer defines the spatial dimensions (height and width) of the next layer. Specifically, along the height, the spatial dimension of the next layer can be expressed as [[L_{q+1} = (L_q - F_q + 1)]], and along the width, it can be expressed as [[B_{q+1} = (B_q - F_q + 1)]]."""),
        TextBody(
            text:
                """It's important to notice that in the next layer of our CNN, we can have multiple feature maps, and this quantity is directly related to the number of filters used in the first layer. The number of filters represents the model's potential because it controls both the diversity of features learned and the number of trainable parameters, which collectively influence the model's capacity and ability to capture intricate patterns in the data"""),
        InlineMathText(
            """The [[p_{th}]] filter in the [[q_th]] layer layer is characterized by a three-dimensional tensor denoted as [[W^{(p,q)} = [w_{ijk}^{(p,q)}]]] where [[i]] is the height, [[j]] is the width and [[k]] is the depth. The feature map of layer [[q_{th}]] is represented by a tridimensional tensor H^{(q)} = [h_{ijk}^{(q)}]. Notice that when [[q=1]] then [[H^1]] will be the input layer. The convolution of the qth layer to the ([[q+1]]) can be defined as:"""),
        EquationBlock(
            text:
                r"""h_{ijk}^{(q+1)} = \sum_{r=1}^{F_q}\sum_{r=1}^{F_q}\sum_{k=1}^{d_q}w_{rsk}^{(q,p)}h_{i+r-1,j+s-1,k}^{q}"""),
        TextBody(
            text:
                """When the depth of a feature map is greater than 1, the contributions from each input feature map are aggregated, resulting in a single value for the output feature map."""),
        TextHeadlineTertiary(text: "Intuition of convolution"),
        TextBody(
            text:
                """Convolution encapsulates three essential concepts that are pivotal to understanding how our model operates: sparse interactions, parameter sharing, and equivariant representations."""),
        TextBody(
            text:
                """Sparse interactions, also known as sparse connectivity, describe a neural network design where not every neuron in one layer connects to every neuron in the subsequent layer. This strategic design offers several notable advantages. Firstly, it greatly enhances efficiency by reducing the number of parameters, thereby decreasing computational requirements. Secondly, sparse interactions effectively combat overfitting by preventing the model from memorizing noisy data patterns. Additionally, sparse connectivity enhances interpretability, making it easier to discern which inputs or features have a more significant influence on a specific neuron's output, contributing to a deeper understanding of the model's inner workings."""),
        TextBody(
            text:
                """Parameter sharing refers to using the same parameter for more than one function in a model. This allows a single set of weights to detect the same feature or pattern in different parts of the input. By sharing parameters, the network becomes more efficient in learning and recognizing patterns, as it doesn't need to learn distinct sets of weights for every possible location."""),
        TextBody(
            text:
                """Parameter sharing and sparse interactions are closely related in CNNs, as they work together to define what is known as receptive field."""),
        TextBlockquote(
            text:
                """The receptive field represents the specific region of the input data that a neuron in a particular layer is responsive to or 'sees.' In convolutional networks, the receptive field of neurons in deeper layers is more extensive compared to those in shallower layers. This expansion occurs because each neuron in a higher layer integrates information from a combination of receptive fields of select neurons from the preceding layer. Despite the sparsity of connections in a CNN, neurons in deeper layers can indirectly gather information from a substantial portion, if not the entirety, of the input image."""),
        ImageWrapper(image: AppAssetNames.receptiveField),
        TextBody(
            text:
                """Equivariance to translation implies that when the input undergoes a change, the output changes in a corresponding manner. In practical terms, if an object within the input is shifted or moved, its representation in the output will undergo a similar spatial transformation. This property is particularly valuable in computer vision tasks, where detecting objects or features in different positions within an image is a common requirement. Equivariance to translation ensures that a neural network can recognize objects regardless of their location in the input, enhancing the network's ability to generalize effectively to various spatial configurations."""),
        TextHeadlineTertiary(text: "Padding"),
        InlineMathText(
            """Convolutional operations inherently reduce the size of both input and output layers. To mitigate this, padding can be introduced. The loss of pixels in each spatial axis corresponds to [[(F_q-1)]] for each spatial axis. Adding padding of [[(F_q-1)/2]] to the borders preserves the input's spatial dimensions, ensuring that the output feature map matches the input's size. Another approach would be to add a padding greater than the [[(F_q-1)/2]] in such a way that the output feature map becomes greater than the input."""),
        TextBody(
            text:
                """Allowing size loss due to a lack of padding is generally not recommended, as it contradicts the intentional preservation of spatial information. Such size loss can undermine the network's feature extraction capability and hinder generalization. It's important to note that regularization techniques, which are distinct from padding, are specifically applied to control overfitting and enhance the network's generalization performance."""),
        TextHeadlineTertiary(text: "Pooling"),
        TextBody(
            text:
                """The pooling operation serves to replace the output of the network at a specific location with a summarizing statistic derived from nearby outputs. One widely used technique is max-pooling, which involves identifying the maximum value within a rectangular neighborhood. The neighborhood is typically defined by a small window or kernel, often 2x2 or 3x3 in size. The pooling operation is repeated as the kernel is moved to different positions across the feature map. Each time the kernel is placed in a new position, it selects the maximum value within its neighborhood. """),
        InlineMathText(
            r"""If we use a stride of [[S = 1]], it results in a new layer with dimensions [[(L_q - P_q + 1) \times (B_q - P_q + 1) \times d_q]]. This means the length and width of the output remain fairly similar to the input, with some potential reduction based on padding [[(P)]] and the specific layer [[(q)]]."""),
        InlineMathText(
            """However, if we use a larger stride, say [[ S_q > 1]], the length and width of the output change. The new length would be [[(L_q - P_q) / S_q + 1]], and the new width would be [[(B_q - P_q) / S_q + 1]]. This means that when we increase the stride, we reduce the spatial dimensions of each activation map significantly."""),
        TextBody(
            text:
                """"Using pooling in a neural network can be thought of as imposing a very strong expectation that the layer's learned function should remain unchanged or invariant when the input is slightly shifted or translated.. By considering only local information and downsizing the feature maps, pooling effectively ignores fine-grained positional variations in the input. Instead, it focuses on capturing more general and robust patterns or features that are relatively insensitive to small translations"""),
        TextBlockquote(
            text:
                """Every reduction of the spatial field corresponds to an increment in the receptive field."""),
        TextHeadlineTertiary(text: "Stride"),
        InlineMathText(
            r"""Convolutional operations do not necessarily have to be applied to every position within a layer. A modern method for downsizing the spatial dimensions of a feature map involves the use of strides greater than 1 during convolution. This technique effectively reduces the feature map's size to [[(L_q - F_q)/S_q + 1]] in height and [[(B_q - F_q)/S_q + 1]] in width, where [[L_q]] and [[B_q]] represent the original dimensions and [[F_q]] is the filter size."""),
        TextHeadlineTertiary(text: "ReLu and fully connected layers."),
        InlineMathText(
            r"""The ReLU (Rectified Linear Unit) and fully connected layers are integrated into the convolutional neural network architecture similarly to how they are employed in conventional neural networks. In each instance, for every value within the dimensions of [[L_q \times B_q \times d_q ]] of a particular layer, ReLU serves as the activation function, shaping these values for propagation to the subsequent layer. The fully connected layer operates independently, following the same principles as those encountered previously in traditional neural networks."""),
        TextHeadlineTertiary(text: "BackPropagation with CNNS"),
        InlineMathText(
            r"""Let [[z^{l+1}]] be a matrix of [[2 \times 2]] ,[[z^l]] be [[3 \times 3]] and [[F]] be the filter between [[z^{l}]] and [[z^{l+1}]].Assume that loss gradients of the cells in  layer [[z^{l+1}]] have already been computed [[\frac{\partial \mathcal{L}}{\partial z^{l+1}}]]. Now, we want to understand how changes in [[z^{l}]] affect the overall loss. To do this, we need to compute the derivatives for each cell [[z_{ij}^{l}]] in [[z^{l}]]. """),
        InlineMathText(
            """Initially, we express the derivative of the loss with respect to [[z_i^l]] as a sum of products. It considers all elements in [[z^{l+1}]] and their contributions to [[z_i^l]]. The following equation helps us understand how changes in the elements of [[z^{l+1}]] and F impact the loss."""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial z_{i}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}} \frac{\partial z_{11}^{l+1}}{\partial z_i^{l}}+ \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}} \frac{\partial z_{12}^{l+1}}{\partial z_i^{l}}+ \frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}} \frac{\partial z_{21}^{l+1}}{\partial z_i^{l}} + \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}} \frac{\partial z_{22}^{l+1}}{\partial z_i^{l}}"""),
        InlineMathText(
            """Notice that we represent the index [[ij]] of [[z_{ij}^{l}]] as i. We simplify the above expression by using a summation notation."""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial z_{i}^{l}} = \sum_k^{}\frac{\partial \mathcal{L}}{\partial z_k^{l+1}} \frac{\partial z_k^{l+1}}{\partial z_i^{l}}"""),
        InlineMathText(
            """Now, let's consider how [[z_{ij}^{l+1}]] is calculated during the convolution operation between [[z^{l+1}]] and [[F]]. We have formulas that illustrate this relationship for each element in [[z^{l+1}]]"""),
        EquationBlock(
            text:
                """z_{11}^{l+1}= z_{11}^lF_{11}+ z_{12}^lF_{12}+z_{21}^lF_{21}+ z_{22}^lF_{22}"""),
        EquationBlock(
            text:
                """z_{12}^{l+1}= z_{12}^lF_{11}+ z_{13}^lF_{12}+z_{22}^lF_{21}+ z_{23}^lF_{22}"""),
        EquationBlock(
            text:
                """z_{21}^{l+1}= z_{21}^lF_{11}+ z_{22}^lF_{12}+z_{31}^lF_{21}+ z_{32}^lF_{22}"""),
        EquationBlock(
            text:
                """z_{22}^{l+1}= z_{22}^lF_{11}+ z_{23}^lF_{12}+z_{32}^lF_{21}+ z_{33}^lF_{22}"""),
        TextBody(
            text:
                """Having the clarity that this offers we can perform the following simplification:"""),
        InlineMathText(
            """With these equations in mind, we can simplify the process of finding the derivatives of [[z_{ij}^{l+1}]] with respect to [[z^l]]. This clarity allows us to perform the following simplification:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{z_{11}^{l+1}}}{\partial z_{11}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}F_{11}"""),
        TextBody(text: "Consequently:"),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial z_{11}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}F_{11}"""),
        InlineMathText(
            r"""We can apply a similar approach to the remaining [[\frac{\partial \mathcal{L}}{\partial z_{i}^{l}}]] terms:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial z_{12}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}F_{12} + \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}}F_{11}"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial z_{13}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}}F_{12}  """),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial z_{21}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}F_{21} + \frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}}F_{11}"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial z_{22}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}F_{22} + \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}}F_{21}+\frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}}F_{12} + \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}}F_{11} """),
        EquationBlock(text: r"""\cdots """),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial z_{33}^{l}} = \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}}F_{21}"""),
        TextBody(
            text:
                """We'll bookmark this point to circle back and discuss a related topic."""),
        TextBody(
            text:
                """Lets consider the formula for updating the weights of our model at a certain layer:"""),
        TextBody(
            text:
                """let's focus on the formula used to update the weights of our model at a specific layer:"""),
        EquationBlock(
            text:
                r"""F^{new}=F^{old} - \alpha \frac{\partial \mathcal{L}}{\partial F}"""),

        InlineMathText(
            r"""To calculate [[\frac{\partial \mathcal{L}}{\partial F}]], we follow a similar approach as we did when computing [[\frac{\partial \mathcal{L}}{\partial z^{l}}]]. For clarity and simplicity, we will denote the individual elements of [[F]] as [[F_i]], where [[i]] corresponds to the indexes 11, 12, 21, and 22."""),
        TextBody(
            text:
                """Now, let's consider the partial derivatives involved in this computation:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{L}}{\partial F_{i}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}} \frac{\partial z_{11}^{l+1}}{\partial F_{i}}+ \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}} \frac{\partial z_{12}^{l+1}}{\partial F_i}+ \frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}} \frac{\partial z_{21}^{l+1}}{\partial F_{i}} + \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}} \frac{\partial z_{22}^{l+1}}{\partial F_{i}}"""),
        TextBody(
            text:
                """Building on the equations used to compute the forward pass, we can simplify these partial derivatives:"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial F_{11}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}X_{11} + \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}}X_{12}+\frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}}X_{21} + \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}}X_{22}"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial F_{12}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}X_{12} + \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}}X_{13}+\frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}}X_{22} + \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}}X_{23}"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial F_{21}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}X_{21} + \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}}X_{22}+\frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}}X_{31} + \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}}X_{32}"""),
        EquationBlock(
            text:
                r"""\frac{\partial \mathcal{{\mathcal{L}}}}{\partial F_{22}} = \frac{\partial \mathcal{L}}{\partial z_{11}^{l+1}}X_{22} + \frac{\partial \mathcal{L}}{\partial z_{12}^{l+1}}X_{23}+\frac{\partial \mathcal{L}}{\partial z_{21}^{l+1}}X_{32} + \frac{\partial \mathcal{L}}{\partial z_{22}^{l+1}}X_{33}"""),
        InlineMathText(
            r"""Upon close examination, it becomes evident that this set of equations is essentially a convolution operation: [[X * \frac{\partial \mathcal{L}}{\partial F}]]."""),
        InlineMathText(
            r"""Likewise, the matrix we found for [[\frac{\partial \mathcal{L}}{\partial z^{l}}]] can be expressed as a convolution with transposed weights: [[F^T * \frac{\partial \mathcal{L}}{\partial z^{l+1}}]]."""),
        TextBody(
            text:
                """This completes our understanding of how weight updates and backpropagation operate in the context of convolutional neural networks."""),
        Divider(),
        TextHeadlineSecondary(text: "Bibliography"),
        Container(
            padding: kMarginVertical48,
            height: (kMarginBottom48.bottom * 8) + 100 * 1,
            child: Column(
              children: [
                SourceReferences(
                    name: "Receptive field:",
                    source:
                        """https://www.uibk.ac.at/studium/anmeldung-zulassung/aufnahmeverfahren-psychologie/ma-psychologie/receptive-field---wikipedia.pdf"""),
                SourceReferences(
                    name: "Receptive field - calculation",
                    source:
                        """https://distill.pub/2019/computing-receptive-fields/#solving-receptive-field-region"""),
                SourceReferences(
                    name: "Convolutional Neural Networks",
                    source:
                        """Nielsen, M. A. (2015). Chapter 6: Deep Learning. In Neural Networks and Deep Learning. Retrieved from http://neuralnetworksanddeeplearning.com"""),
                SourceReferences(
                    name: "Convolutional Neural Networks",
                    source:
                        """Aggarwal, C. C. (2018). Chapter 8: Convolutional Neural Networks. In Neural Networks and Deep Learning (pp. 235-260). Springer.""")
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
