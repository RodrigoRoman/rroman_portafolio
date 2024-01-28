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

BlogItem reccurentNeuralNet = BlogItem(
    blogOverview: BlogOverview(
        date: "24 November 2023",
        image: AppAssetNames.recurrentNeuralNet,
        title: "Recurrent Neural Networks: Temporal Dynamics and Memory",
        description:
            """In this article, we dig into the details of Recurrent Neural Networks (RNNs), shedding light on their unique ability to process sequential data across various time steps. We explore the architecture of RNNs, emphasizing the crucial role of the hidden state as a form of memory that captures temporal dependencies and patterns within data. Through a comprehensive examination, the article details each neuron's function within the network, the forward pass mechanism, and the significance of weight matrices in shaping the network's learning process. We also explain the backpropagation through time (BPTT) technique, essential for training RNNs, and present a detailed mathematical breakdown of the partial derivatives involved. The article aims to provide a clear and complete understanding of RNNs."""),
    blogContent: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWrapper(image: AppAssetNames.recurrentNeuralNet),
        TextHeadlinePrimary(
            text: "Recurrent Neural Networks: Temporal Dynamics and Memory"),
        TextHeadlineTertiary(text: "Motivation of RNN"),
        TextBody(
            text:
                """A Recurrent Neural Network (RNN) is a type of neural networks designed to process sequential data by accepting inputs at various timesteps. In an RNN, there is a state which holds information about the inputs the network has processed so far. This hidden state acts as a memory mechanism that allows the model to capture dependencies and patterns within the data across time. This state is updated iteratively as a function of both the current input and the previous state, enabling the network to maintain a memory of past inputs. The architecture of RNNs is particularly efficient at handling time-series data, sequential information, or any dataset where temporal relationships across different times are important. Their ability to capture dynamic temporal behaviors makes them ideal for tasks such as speech recognition, language modeling, and sequence prediction."""),
        TextHeadlineTertiary(text: "Architecture of each neuron."),
        InlineMathText(
            """Each neuron receives an input at time [[t]] [[x_t]] which represents the data that arrives at current timestep [[t]]. This input [[x_t]] is weighted by a matrix [[W_{xh}]] which determines the importance of [[x_t]]  in the context of the ongoing sequence."""),
        InlineMathText(
            """Alongside this, the neuron also integrates information from the past through the hidden state [[h_{t-1}]] which comprehends the network's memory of all previous inputs up to time [[t-1]]. Thus hidden state is weighted by another matrix [[W_{hh}]], which modulates the way historical information will influence the current state."""),
        TextHeadlineTertiary(text: "Forward Pass"),
        ImageWrapper(image: AppAssetNames.rnnDiagram),
        InlineMathText(
            """After the inputs have been appropiately weighted, they are combined through addition and then directed through an activation function. The hyperbolic tangent function, [[tanh]], is frequently employed for this purpose due to its efficacy in introducing non-linearity, which is crucial for modeling complex data patterns. The mathematical representation of the hidden state is:"""),
        EquationBlock(
            text: r"""h_t = \tanh(W_{hh} h_{t-1} + W_{hx} x_t + b_h)"""),
        InlineMathText(
            """A remarkable aspect of RNNs is that every neuron in the network produces an output. This output can be further processed using functions like softmax if the goal is to make predictions or clasification. If this is the case, the output [[y_t^i]] is determined by applying a linear transformation to [[h_t]] using the output weight matrix [[W_{hy}]], adding an output bias [[b_y]], and then passing this through an activation function."""),
        EquationBlock(text: r"""y_t = softmax(W_{hy} h_t + b_y)"""),
        InlineMathText(
            """It is worth pointing out the fact that all weights [[W_{hh}]] , [[W_{hx}]] and [[W_{hy}]] are the same at each timestep. They get updated at each point. This implies that rather than having a distinct set of weights for each timestep—which would be computationally expensive and heavy—the network leverages the same weights, thus implementing a form of weight sharing. This uniformity is crucial for the RNN's ability to process sequences, as it allows the network to apply the learned information from previous data points to new ones. This mechanism is the basis of the RNN's memory effect, where the state of the network effectively captures and retains information over time."""),
        TextHeadlineTertiary(text: "Backpropagation"),
        TextBody(
            text:
                """As we already saw, in RNNs, each neuron or unit has a temporal dimension, meaning it processes inputs not just in isolation, but in the context of a sequence of inputs that have come before. This is achieved by maintaining a 'hidden state' that captures information about the sequence processed so far. During the forward pass, an RNN computes this hidden state and the output at each step of the sequence using its current input, previous hidden state, and learned weights."""),
        TextBody(
            text:
                """For the process of backpropagation we use a sligtly different technique called Back propagation through time (BPTT). This process involves tracing the impact of the weights on the loss function across all time steps in a sequence. Unlike standard backpropagation, which treats each input independently, BPTT accumulates the gradients over time. This is because, in an RNN, the same weights are applied at each time step, making it necessary to understand how these weights influence the loss at every point in the sequence, not just at the final output."""),
        TextHeadlineTertiary(text: """How partial derivatives work?"""),
        TextBody(
            text:
                """Lets examine the partial derivative that represents the gradient of the loss with respect to the weights from the hidden to the output layer at a specific timestep [[n]]. This gradient is important as it directs how we adjust [[W_{hy}]] during training to minimize the loss"""),
        EquationBlock(
            text:
                r"""\frac{\partial L}{W_{hy}^n} = \frac{\partial L}{\partial \hat{y}_n}\frac{\partial \hat{y}_n}{\partial W_{hy^n}}"""),
        TextBody(
            text:
                "Each weight update is informed by the entire sequence, not just isolated instances, ensuring that the network learns patterns across time rather than in a vacuum"),
        EquationBlock(
            text:
                r"""\frac{\partial L}{W_{hy}} = \sum_{i=1}^{n}\frac{\partial L}{\partial W_{hy}^i}"""),
        TextBody(
            text:
                """The gradient at any given state depends on both the current output's accuracy and the subsequent state's gradient. This relationship exemplifies the 'through time' component of BPTT, where each state's error helps to inform the error of the previous state, thereby creating a feedback loop of learning that is truly sequential in nature. Take for instance the generic formula for the partial derivative with respect to a layer"""),
        EquationBlock(
            text:
                r"""\frac{\partial L}{\partial h_i} = \frac{\partial L}{\partial \hat{y}_i}\frac{\partial \hat{y}_i}{\partial {h}_i}+\frac{\partial L}{\partial {h}_{i+1}}\frac{\partial {h}_{i+1}}{\partial {h}_i}"""),
        EquationBlock(
            text:
                r"""\frac{\partial L}{W_{hy}} = \sum_{i=1}^{n}\frac{\partial L}{\partial W_{hy}^i}"""),
        TextBody(
            text:
                """The weight matrix in an RNN is a critical component that transforms input and hidden states into a new hidden state. When gradients are backpropagated, they are repeatedly multiplied by this weight matrix"""),
        TextBlockquote(
            text:
                """Singular values measure the 'stretching' effect of the matrix A in different directions represented by the singular vectors. The largest singular value indicates the greatest extent to which A can stretch a vector."""),
        TextBody(
            text:
                """If the largest singular value of the weight matrix is greater than 1, each multiplication can amplify the gradient.This repeated amplification, as the gradient is propagated back through many time steps, can lead to exponentially large gradients.These large gradients can cause unstable training, with the network weights updating too drastically, leading to a failure in the learning process."""),
        TextBody(
            text:
                """Conversely, if the largest singular value is less than 1, the gradients get scaled down with each multiplication.This scaling down can become significant over many time steps, leading to gradients so small that they have negligible influence. As a result, the weights of the network hardly update, essentially halting the learning process.To address the vanishing gradient issue, a specialized architecture known as Long Short-Term Memory (LSTM) has gained popularity due to its effectiveness. For mitigating the problem of exploding gradients, a technique called gradient clipping is frequently employed. This method involves setting a threshold value to limit the size of the gradient, thereby preventing excessively large updates to the network’s parameters and ensuring more stable training."""),
        Divider(),
        TextHeadlineSecondary(text: "Bibliography"),
        Container(
            padding: kMarginVertical48,
            height: (kMarginBottom48.bottom * 8) + 100 * 1,
            child: Column(
              children: [
                SourceReferences(
                    name: "Fundamentals of Recurrent Neural Networks",
                    source:
                        """Sherstinsky, A. (n.d.). Fundamentals of Recurrent Neural Network (RNN) and Long Short-Term Memory (LSTM) Network. Retrieved from https://www.linkedin.com/in/alexsherstinsky"""),
                SourceReferences(
                    name: "Recurrent Neural Networks and Language Models",
                    source:
                        """Stanford University. (n.d.). CS224N: Natural Language Processing with Deep Learning. Retrieved from https://web.stanford.edu/class/cs224n/"""),
                SourceReferences(
                    name: "Recurrent Neural Networks",
                    source:
                        """MIT. (2023). Notes – Chapter 12: Recurrent Neural Networks. [Lecture notes]. Retrieved from https://openlearninglibrary.mit.edu/assets/courseware/v1/0de27572f5d771b35ad094df49a8e200/asset-v1:MITx+6.036+1T2019+type@asset+block/notes_chapter_Recurrent_Neural_Networks.pdf"""),
                SourceReferences(
                    name: "Convolutional Neural Networks",
                    source:
                        """Aggarwal, C. C. (2018). Chapter 7: Recurrent Neural Networks. In Neural Networks and Deep Learning. Springer.""")
              ],
            )),
        Divider(),
        TextHeadlineSecondary(text: "Code implementations"),
        GitHubCodeSection(
            svg: AppAssetNames.githubIcon,
            name: "Recurrent Neural Network Language Model Using Numpy",
            bio:
                "https://github.com/RodrigoRoman/ml_ai_portafolio/blob/main/recurrent_neural_net/rnn_from_zero_numpy.ipynb")
      ],
    ));
