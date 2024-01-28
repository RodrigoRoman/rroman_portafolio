import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/screens/blog_posts/components/image_wrapper.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_primary.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';
import 'package:news/screens/main/components/text_components/text_headline_tertiary.dart';
import 'package:news/screens/main/components/widget_components/source_references.dart';

BlogItem adHocNetworks = BlogItem(
    blogOverview: BlogOverview(
        date: "15 Enero 2024",
        image: AppAssetNames.manet,
        title: "Mobile Ad Hoc Networks (MANETs): Evolution and Applications",
        description:
            "This article is an exploration of Mobile Ad Hoc Networks (MANETs), tracing their evolution from military applications to versatile civilian uses, such as in smart homes and emergency response scenarios. It examines the unique network structure of MANETs, where each device simultaneously acts as a source, router, and destination, facilitating a dynamic and adaptable networking environment. The piece also discusses the challenges and advantages associated with MANETs, including their minimal configuration needs and the inherent issues of variable connectivity and network stability. A key focus is on the distinct routing protocols used in MANETs, differentiating between proactive and reactive approaches to optimize network efficiency. Furthermore, the article highlights the influence of MANET principles in modern network management, particularly in smart city infrastructures and Internet of Things (IoT) applications, and discusses the emergence of Vehicular Ad-Hoc Networks (VANETs) and their role in intelligent transportation systems."),
    blogContent: Column(children: [
      ImageWrapper(image: AppAssetNames.manet),
      TextHeadlinePrimary(
          text: "Mobile Ad Hoc Networks (MANETs): Evolution and Applications"),
      TextHeadlineSecondary(text: "What is a Mobile Ad Hoc Network?"),
      TextBody(
          text:
              """A Mobile Ad Hoc Network (MANET) is a decentralized type of wireless network that operates without the need for a pre-existing infrastructure. The concept of Mobile Ad Hoc Networks has evolved significantly since its inception, emerging as a critical technology in various dynamic environments. Historically, the development of MANETs was primarily driven by military needs, where there was a demand for robust, flexible, and mobile communication systems. In scenarios where traditional fixed-network infrastructures were impractical or unavailable, such as in battlefield communications or reconnaissance missions, the self-organizing and decentralized nature of MANETs proved invaluable. Over time, this technology has transcended its military roots, and has found a development into new technologies that have applications ranging from smart home environments with interconnected intelligent devices to emergency situations, such as areas impacted by natural disasters where traditional communication infrastructure might be unavailable. """),
      SizedBox(
          height: 400,
          child:
              Center(child: ImageWrapper(image: AppAssetNames.manetMilitary))),
      TextHeadlineTertiary(text: "How it works?"),
      TextBody(
          text:
              """In a MANET, each participating device serves a triple role: it acts as a source of data, a router to forward data to other nodes, and a destination for incoming data. This multi-functionality allows MANETs to maintain a fluid and adaptable network structure. These networks can operate independently or be connected to larger networks, such as the Internet, providing versatility in their application."""),
      TextBody(
          text:
              """One of the key advantages of MANETs is their minimal need for configuration. Nodes can join or leave the network seamlessly, without significantly disrupting its overall functionality. This lack of a centralized base station or infrastructure, combined with each node being equipped with both transmission and reception capabilities, facilitates easy and flexible connections between devices."""),
      TextBody(
          text:
              """However, there are inherent challenges associated with MANETs. The network's connectivity and communication efficiency can vary significantly due to the uneven distribution of nodes. High node density can lead to reduced bandwidth and slower data transfer rates due to increased signal interference and network congestion. Conversely, in areas of low node density, there may be gaps in coverage, leading to potential disconnections. Additionally, the mobility of nodes, while offering flexibility, can negatively impact network topology and stability, as the constant movement alters the paths through which data is routed."""),
      TextBody(
          text:
              """The routing protocols for Mobile Ad Hoc Networks are specifically engineered to adeptly handle the dynamic changes in network topology. Broadly, these protocols fall into two categories: """),
      TextHeadlineTertiary(text: "Proactive protocols"),
      TextBody(
          text:
              """These protocols maintain updated routing information for all nodes in the network at all times, regardless of whether or not a node is currently involved in data packet transmission. This approach ensures high network availability, as routes are readily available whenever data transmission is required. However, the downside is the potential for higher overhead, as routing information needs to be constantly updated and maintained even when data transmission is not occurring."""),
      TextHeadlineTertiary(text: """Reactive Protocols (On-Demand)"""),
      TextBody(
          text:
              """In contrast, reactive protocols establish routes between a source and destination only when there is a specific demand for data transmission. This on-demand approach tends to be more efficient in terms of routing overhead, especially in scenarios where network traffic is low and changes in topology are frequent. By finding routes as needed, these protocols reduce the burden on the network, as they do not require the maintenance of routing information for all nodes at all times."""),
      TextBody(
          text:
              """Both proactive and reactive protocols have their unique advantages and are suited for different network conditions and requirements. Proactive protocols are beneficial in networks where the speed of route determination is critical and nodes have sufficient resources to handle continuous route updates. On the other hand, reactive protocols are more suitable for networks with limited resources and where network traffic patterns are sporadic. The choice between proactive and reactive routing protocols in MANETs depends on factors such as network size, node mobility, and traffic patterns."""),
      TextBody(
          text:
              """Leveraging the principles of Mobile Ad Hoc Networks (MANETs) such as advancements in network management techniques have significantly improved the handling of complex and dynamic network topologies. Modern smart city infrastructures and Internet of Things (IoT) applications utilize similar concepts for dynamic and adaptive network communications. This integration is key in managing the complex web of urban IoT devices for efficient city monitoring and management. Additionally, the evolution of MANETs has led to the development of Vehicular Ad-Hoc Networks (VANETs), which play a crucial role in intelligent transportation systems. In VANETs, vehicles communicate with each other and with infrastructure, enhancing road safety and traffic efficiency. """),
      TextBody(
          text:
              """In essence, the foundational principles of MANETs continue to shape and drive the evolution of wireless network technologies, adapting to meet the challenges and requirements of today's interconnected world."""),
      SizedBox(
        height: 100,
      ),
      Divider(color: Color(0xFFEEEEEE), thickness: 1),
      Container(
          padding: kMarginVertical48,
          height: (kMarginBottom48.bottom * 7) + 100 * 1,
          child: Column(
            children: [
              SourceReferences(
                  name: "What is an ad hoc net?",
                  source:
                      """https://www.comptia.org/content/guides/what-is-an-ad-hoc-network"""),
              SourceReferences(
                  name: "Moving Ad Hoc Network",
                  source: """https://www.mdpi.com/2071-1050/13/11/6187"""),
              SourceReferences(
                  name: "Ad Hoc networks",
                  source:
                      """Singh, J., Dutta, P., & Chakrabarti, A. (2018). Preliminaries. En Ad Hoc Networks (Chapter 3). Springer, Singapore. https://doi.org/10.1007/978-981-10-8770-7_3"""),
              SourceReferences(
                  name: "Fundamentals of Ad hoc Networks",
                  source:
                      """Hekmat, R. (2006). Ad-hoc Networks: Fundamental Properties and Network Topologies. Springer. """)
            ],
          )),
    ]));
