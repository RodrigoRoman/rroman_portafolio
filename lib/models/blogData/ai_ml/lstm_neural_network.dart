import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/screens/blog_posts/components/image_wrapper.dart';
import 'package:news/screens/blog_posts/components/math_latex/equation_block.dart';
import 'package:news/screens/blog_posts/components/math_latex/inline_math_text.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_primary.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';
import 'package:news/screens/main/components/text_components/text_headline_tertiary.dart';
import 'package:news/screens/main/components/widget_components/github_code_section.dart';
import 'package:news/screens/main/components/widget_components/source_references.dart';

BlogItem lstmNeuralNet = BlogItem(
    blogOverview: BlogOverview(
        date: "2 July 2023",
        image: AppAssetNames.lstmNeuralNet,
        title:
            "Long Short Term Memory Neural Networks: The Role of LSTM Gates.",
        description:
            """The article discusses the importance of context and memory in neural networks, focusing on Recurrent Neural Networks (RNNs). It highlights the challenges faced by traditional RNNs, such as vanishing and exploding gradients, and introduces Long Short-Term Memory (LSTM) networks as a solution. LSTM networks use gates and cell states to manage long-term and short-term memory, effectively handling sequential data like language and time series. The article details the functioning of LSTM gates, including the forget gate, input gate, and output gate, explaining how they regulate information flow and maintain a balance between retaining historical context and adapting to new data."""),
    blogContent: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWrapper(image: AppAssetNames.lstmNeuralNet),
        TextHeadlinePrimary(
            text:
                "Long Short Term Memory Neural Networks: The Role of LSTM Gatess"),
        TextBody(
            text:
                """The accuracy and relevance of predictions made by a neural network are heavily influenced by the network's ability to understand and utilize the context within the data. This concept is evident in Convolutional Neural Networks (CNNs), where the 'receptive field' of each layer determines the extent of the input data that the network can process and interpret at any given layer. The larger the receptive field, the broader the context the network can consider, allowing it to recognize more complex patterns."""),
        TextBody(
            text:
                """In the realm of Recurrent Neural Networks (RNNs), the challenge lies in effectively capturing and retaining historical information, which is crucial for tasks like time series prediction or language modeling. Traditional RNNs struggle with this, particularly over long sequences, due to issues with vanishing and exploding gradients. For the case of vanishing gradient, the learning would take a lot of time or wont be able to learn at all because the information at the beginning of the network will be lost and the weights are updated based on the near effects and not the long term eggects. For the case of exploding gradient, the problem is that the results will become infinity or NaNs due to evident computational limitations."""),
        InlineMathText(
            r"""The first solution that comes to mind is to force constant error flow through internal states of special units. The idea is to set up the unit such that the derivative of its activation function multiplied by its self-connection weight [[w_{jj}]] equals 1."""),
        SizedBox(
          height: 50,
        ),
        EquationBlock(text: r"""f_{j}^′(net_j(t))⋅w_{jj}=1"""),
        TextBody(
            text:
                """This equation implies that the activation function [[f_j]] of unit [[j]] should be linear, as only a linear function can maintain its derivative constant (which would be necessary for the product to equal 1 consistently). If this condition is met, the activation of unit [[j]] at time t+1 is the same as at time [[t]], leading to a constant 'error carousel' or error flow through the unit."""),
        TextBody(
            text:
                """However, this naive approach presents significant challenges:"""),
        TextBody(
            text:
                """1. **Input Weight Conflict**: If a unit is supposed to store certain inputs and ignore others, the same weight cannot effectively cater to both requirements. This conflict arises because the unit needs to be activated by certain inputs and remain unaffected by irrelevant inputs.
2. **Output Weight Conflict**: Similar to the input weight, the output weight also faces a dilemma. It needs to facilitate the retrieval of stored information at certain times while also ensuring that the unit does not disturb other units at different times."""),
        TextBody(
            text:
                """Long Short-Term Memory (LSTM) networks, a type of RNN, are designed to overcome these limitations. They achieve this through a sophisticated mechanism that divides the network's memory into two distinct types: long-term memory and short-term memory."""),
        TextBody(
            text:
                """Lets check out the components of the LSTM model in order to understand its configuration better. """),
        TextHeadlineTertiary(
            text: """What is a gate in the context of LSTM?"""),
        TextBody(
            text:
                """Gates are the key for modulating the flow of information inside the network. Sigmoid activation functions are used for determining the extent to which information should be allowed to pass through. The sigmoid function outputs a value between 0 and 1, which can be interpreted as a percentage or degree of information transfer. This type of gating mechanism is strategically utilized at various stages within each network module, optimizing the flow and processing of information throughout."""),
        TextHeadlineTertiary(text: """Long-term memory"""),
        InlineMathText(
            """The long-term memory in an LSTM network is embodied by the cell state, which serves as a dedicated pathway for transferring long-term information ([[C_{t-1}]]) from one LSTM unit to the next. This pathway is fundamental to the LSTM's architecture as it is not directly modified by weights and biases, unlike other parts of the network. As a result, the cell state maintains a constant error flow, enabling the preservation of long-term memory across a series of units without succumbing to the issues of exploding or vanishing gradients. This design is crucial for the LSTM's ability to effectively process and remember information over extended sequences."""),
        TextHeadlineTertiary(text: """LSTM Components - gates:"""),
        ImageWrapper(image: AppAssetNames.lstmCell),

        TextBody(
            text:
                """The remaining components of the LSTM architecture can be categorized into various gates, each serving a distinct function. These gates, namely the forget gate, input gate, and output gate, all utilize sigmoid activation units."""),
        TextHeadlineTertiary(text: """Forget gate:"""),
        InlineMathText(
            """The initial step in the LSTM unit's operation involves determining the amount of new information to admit. This process starts with the concatenation or addition of the previous hidden state, [[h_{t−1}]], and the current input, [[x_t]]. These two vectors are seamlessly merged end-to-end, forming a single extended vector. This concatenated vector is then fed into the sigmoid function. The primary purpose of this concatenation is to base the decision-making process at each gate on a comprehensive context that combines immediate past information (represented by [[h_{t−1}]]) and present input data."""),
        InlineMathText(
            """Subsequently, this merged vector undergoes a transformation through the sigmoid function, which effectively assigns a value between 0 and 1 to each element. These values act as a filter for the cell state C_{t−1}, regulating the degree to which previous information is retained or discarded. In essence, this filtering mechanism determines how much of the long-term information, stored in the cell state, is preserved or lost during this phase."""),
        TextHeadlineTertiary(text: """Input Gate"""),
        InlineMathText(
            """The next step is to establish what new information will be stored in the memory cell and in what degree. This process has two components. The same concatenated vector of [[h_{t-1}]] and [[x_t]] are passed both through a sigmoid function which determines the percentage of information pased from this recent memory to the logn term memory. This vector is also passed through a tanh function which creates a vector of candidates to [[c_t]]. We multiply the percentage by the proposed long term memory to decide how much of this will be placed in the memory cell."""),
        TextBody(
            text:
                """The subsequent step in the LSTM unit's operation involves deciding what new information to store in the cell state and to what extent. This process comprises two components:"""),
        TextHeadlineTertiary(text: """Information Filtering:"""),
        InlineMathText(
            r"""The concatenated vector of [[h_{t−1} and [[x_t]], combining the previous hidden state and current input, is first passed through a sigmoid function. This function acts as a gatekeeper, determining the proportion of information that should transition from the recent memory to the long-term memory. The output of this sigmoid function essentially represents the update gate, providing a percentage that signifies how much of the new information should be allowed into the cell state."""),
        TextHeadlineTertiary(text: """Candidate Generation:"""),
        InlineMathText(
            r"""Simultaneously, the same concatenated vector is processed through a tanh function. The role of the tanh function here is to generate a vector of potential candidate values for the new cell state, denoted as [[\hat_{C_t}]]. This vector comprises values that could be added to the cell state, reflecting possible updates based on the most recent data. For memory updates, the symmetry of tanh, within the range -1 to 1, ensures that the proposed changes to the cell state can either positively increment, negatively decrement, or leave the state relatively unchanged, depending on the context"""),
        TextHeadlineTertiary(text: """Combining the Components:"""),
        InlineMathText(
            """The final step in updating the cell state involves an element-wise multiplication of the update gate (the output from the sigmoid function) with the candidate vector (the output from the [[tanh]] function). The result of this multiplication gives the amount of new information to be added to the cell state. In essence, it filters the candidate values, determining the degree to which each value in the candidate vector is included in the update of the cell state."""),
        InlineMathText(
            """"The long-term memory [[C_t]] is updated by summing the preserved portion of the existing memory, as filtered by the forget gate, with the selectively permitted portion of the new proposed memory, as determined by the input gate"""),
        EquationBlock(text: r""""C_t = f_t*C_{t-1}+i_t*\hat{C_t}"""),
        TextHeadlineTertiary(text: """Output Gate"""),
        TextBody(
            text:
                """The last step is the in the LSTM unit is to determine what will be rendered as short term memory through the current hidden state. This is by another sigmoid function which will establish the percentage of information passed which is multiplied by the output of passing the memory cell (long term memory) through a tanh function"""),
        InlineMathText(
            """The final step in the LSTM unit involves determining the content of the short-term memory, represented by the current hidden state [[h_t]]."""),
//THIS COULD BE INDENTED OR NUMBERED
        TextHeadlineTertiary(text: """Output Gate Activation"""),
        InlineMathText(
            """A sigmoid function is applied to the concatenated [[h_{t−1}]] and [[x_t]] vector, determining the proportion of information from the cell state to be used in the hidden state. This output gate essentially decides the relevance of the cell state's information for the current output."""),
        TextHeadlineTertiary(text: """Generation of Hidden State"""),
        InlineMathText(
            """The cell state (long-term memory [[C_t]]) is passed through a tanh function, which helps normalize its values between -1 and 1. The output of this tanh function is then element-wise multiplied by the output of the sigmoid function (from the output gate). The result is the new hidden state [[h_t]], capturing the short-term memory."""),
        EquationBlock(text: r"""o_t = \sigma(W_o[h_{t-1}]+b_0)"""),
        EquationBlock(text: r"""h_t = o_t * tanh(C_t)"""),
        TextBody(
            text:
                """By adjusting the flow of information through these gates, LSTMs can maintain a balance between remembering important historical context (long-term memory) and staying relevant to the latest data (short-term memory). This balance is key to LSTMs' ability to make accurate predictions in tasks involving sequential data, such as language translation, speech recognition, and time series analysis. Additionally  LSTM architecture, particularly the cell state, is designed to maintain a constant error flow across timesteps. This design helps mitigate the vanishing gradient problem  where gradients become too small to be effective over long sequences. While LSTMs prevent vanishing gradients, they can still suffer from exploding gradients. Techniques like gradient clipping (where gradients are scaled down if they exceed a certain threshold) are employed to tackle this issue."""),

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
                """Neural networks are architectures that interconnect multiple artificial neurons to process information in layers. By adjusting the weights and biases during training, these networks can learn to make accurate predictions or classifications based on input data, mimicking the learning process observed in biological neural systems.The interaction between these two types of memory is regulated through a gate mechanism."""),
        Divider(),
        TextHeadlineSecondary(text: "Bibliography"),
        Container(
            padding: kMarginVertical48,
            height: (kMarginBottom48.bottom * 8) + 100 * 1,
            child: Column(
              children: [
                SourceReferences(
                    name: "Recurrent Neural Networks and Language Models",
                    source:
                        """Stanford University. (n.d.). CS224N: Natural Language Processing with Deep Learning. Retrieved from https://web.stanford.edu/class/cs224n/"""),
                SourceReferences(
                    source:
                        """Kalita, Debasish. "An Overview on Long Short-Term Memory (LSTM)." Analytics Vidhya, 24 Mar. 2022, www.analyticsvidhya.com/blog/2022/03/an-overview-on-long-short-term-memory-lstm/.""",
                    name: "Overview on Long Short-Term Memory"),
                SourceReferences(
                    name: "Long Short Term Memory",
                    source:
                        """Aggarwal, C. C. (2018). Chapter 7.5: Long Short Term Memory. In Neural Networks and Deep Learning. Springer."""),
                SourceReferences(
                    source:
                        """Hochreiter, S., & Schmidhuber, J. (1997). Long short-term memory. Neural Computation, 9(8), 1735–1780. https://www.bioinf.jku.at/publications/older/2604.pdf""",
                    name: "LONG SHORT-TERM MEMORY"),
                SourceReferences(
                    source:
                        """Hochreiter, S., & Schmidhuber, J. (1997). Long short-term memory. Neural Computation, 9(8), 1735–1780. https://www.bioinf.jku.at/publications/older/2604.pdf""",
                    name: "LONG SHORT-TERM MEMORY"),
              ],
            )),
        Divider(),
        TextHeadlineSecondary(text: "Code implementations"),
        GitHubCodeSection(
            svg: AppAssetNames.githubIcon,
            name: "LSTM language model - Numpy",
            bio:
                "https://github.com/RodrigoRoman/ml_ai_portafolio/blob/main/long_short_term_memory/LSTM_with_numpy.ipynb")
      ],
    ));
