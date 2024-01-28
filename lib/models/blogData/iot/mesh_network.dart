import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/BlogItem.dart';
import 'package:news/models/BlogOverview.dart';
import 'package:news/screens/blog_posts/components/image_wrapper.dart';
import 'package:news/screens/main/components/text_components/text_block_quote.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_primary.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';
import 'package:news/screens/main/components/text_components/text_headline_tertiary.dart';
import 'package:news/screens/main/components/widget_components/source_references.dart';

BlogItem meshNetwork = BlogItem(
    blogOverview: BlogOverview(
        date: "15 Enero 2024",
        image: AppAssetNames.meshNetwork,
        title: "Wireless Mesh Networks: Flexibility and Connectivity",
        description:
            "This article provides an insightful overview of Wireless Mesh Networks (WMNs), highlighting their unique architecture characterized by interconnected nodes and specialized routers known as Mesh Routers (MRs). It delves into the crucial role of Internet Gateways (IGWs) in bridging WMNs with larger networks like the Internet, emphasizing the enhanced connectivity and network capacity this integration offers. Differing from Mobile Ad Hoc Networks (MANETs), WMNs are portrayed as more stable and scalable, ideal for large-scale or dynamic environments like smart cities or IoT applications. The article also explores the importance of strategic placement of MRs and the use of orthogonal channels to optimize network performance, reducing interference and improving throughput. Additionally, it discusses the key role of the Media Access Control (MAC) protocol in managing the complexities of WMNs, especially in multi-channel and multi-interface scenarios, crucial for maximizing network efficiency in the diverse and growing landscape of IoT applications."),
    blogContent: Column(children: [
      ImageWrapper(image: AppAssetNames.meshNetwork),
      TextHeadlinePrimary(
          text: "Mobile Ad Hoc Networks (MANETs): Evolution and Applications"),
      TextHeadlineSecondary(text: "What is a Mesh Network?"),
      TextBody(
          text:
              """A mesh network is a special form of an ad hoc network characterized by its interconnected nodes. In this network, each node is directly linked to one or several other nodes, creating a robust structure. In wireless mesh networks (WMNs), this architecture enables multihop connectivity, where data hops from one node to another until it reaches its destination, which could be another host within the network or an external network like the Internet, facilitated through access points. """),
      SizedBox(
          height: 400,
          child: Center(
              child: ImageWrapper(image: AppAssetNames.meshNetworkComponents))),
      TextHeadlineTertiary(text: "Wireless Mesh Network - Architecture"),
      TextBody(
          text:
              """Differing from Mobile Ad Hoc Networks (MANETs), a WMN typically consists of specialized routers known as Mesh Routers (MRs) that form the network's backbone. These MRs are distinct from traditional wireless routers in their functionality. Instead of connecting directly to the Internet, they primarily focus on intercommunicating with each other, thus expanding the network's reach and coverage. This interconnectedness allows for a more resilient and flexible network that can dynamically adjust routes and maintain connectivity."""),
      TextBody(
          text:
              """A key component in WMNs is the Internet Gateways (IGWs). While all MRs contribute to the network's internal infrastructure, IGWs have the unique role of connecting the WMN to the wider Internet. They serve as pivotal access points, bridging the wireless mesh network with larger, often wired, bandwidth networks. This dual structure of MRs and IGWs in a WMN ensures efficient internal networking while providing access to external networks, making WMNs a versatile solution for various communication needs, especially in large-scale or dynamic environments."""),
      TextBody(
          text:
              """The role of IGWs in a WMN is crucial – they act as conduits, channeling data from MRs to the Internet. This setup not only facilitates reliable internet access but also optimizes network capacity. An increase in the number of IGWs relative to MRs, although not necessarily at the same rate, improves the network's overall capacity. This improvement occurs because a higher number of IGWs allows for a more balanced distribution of network load, reducing the likelihood of any single MR becoming a bottleneck. Consequently, the risk of congestion is diminished, as data traffic can be efficiently dispersed across multiple IGWs. This distribution mechanism enhances the network's performance, especially in handling high traffic volumes, and ensures a smoother, more consistent internet experience for all users connected to the WMN."""),
      TextHeadlineTertiary(text: "Benefits of WMN"),
      TextBody(
          text:
              """Mobile Ad Hoc Networks (MANETs) are renowned for their self-forming, self-configuring, and self-healing properties, which enable them to spontaneously establish and maintain network connectivity in dynamic environments without fixed infrastructure or centralized control. Wireless Mesh Networks (WMNs), while preserving these core qualities of MANETs, further enhance their capabilities. WMNs offer increased stability and scalability, making them suitable for larger and more permanent installations. They also improve network management through a structured arrangement of dedicated mesh routers, which manage data transmission and routing more efficiently. Additionally, the integration of IGWs in WMNs facilitates seamless connectivity to the broader Internet, thus enhancing network robustness and reliability."""),
      ImageWrapper(image: AppAssetNames.meshHouse),
      TextBody(
          text:
              """Internet access in WMNs is significantly enhanced due to the efficient interplay between Mesh Routers (MRs) and Internet Gateways (IGWs). As a device moves within a WMN, it can seamlessly transition from one MR to another without losing its connection, ensuring uninterrupted network access. This is particularly advantageous in environments where mobility and consistent connectivity are essential."""),
      TextHeadlineTertiary(text: "How to optimize a WMN?"),
      TextBody(
          text:
              """Each Mesh Router (MR) is strategically placed at fixed points to optimize area coverage and enhance internet connectivity. A key aspect of this optimization involves the use of orthogonal channels, which are essentially non-overlapping frequency bands. These channels allow multiple data streams to coexist without causing interference to each other, a concept akin to having separate lanes on a highway for different vehicles, thus preventing traffic congestion. By assigning different orthogonal channels to adjacent MRs, we can prevent interference, which is crucial for maintaining high-quality wireless communication."""),
      TextBlockquote(
          text:
              """A channel in wireless networking refers to a specific frequency range used for transmitting and receiving signals. To maximize efficiency and reduce interference in a WMN, adjacent MRs are often configured to operate on different orthogonal channels (non-overlapping frequency bands)"""),
      TextBlockquote(
          text:
              """In the context of WMNs, interfaces refer to the hardware components of a MR that allow it to connect and communicate with other MRs or devices. Each MR can have multiple interfaces. Having multiple interfaces allows a single MR to simultaneously communicate with several other nodes. In WMNs, different channels can be assigned to different interfaces to reduce interference and increase network capacity."""),
      TextBody(
          text:
              """The Media Access Control (MAC) protocol is key in determining how nodes in a network, especially in multichannel and multi-interface environments like WMNs, communicate with each other to maximize network capacity. Given the distributed nature of WMNs, where each node functions both as a communicator and a router, a distributed MAC protocol is typically preferred over a centralized one. This approach aligns with the decentralized structure of WMNs, allowing for independent decision-making at each node, thereby enhancing network adaptability and efficiency. The implementation of a multiradio MAC protocol is particularly exploitable in these networks. It manages the complexities of nodes equipped with multiple radios, each operating on different channels, to enable simultaneous transmissions, reduce interference, and increase overall throughput. Thus, an effective MAC protocol, adept in handling multiradio and multi-interface scenarios, is crucial in optimizing the capacity and performance of WMNs."""),
      TextBody(
          text:
              """The following are protocols that could fulfill these needs. As we looked at in MANET, the protocols can be divided in proactive and reactive. """),
      TextHeadlineTertiary(text: "Ad hoc On-Demand Distance Vector."),
      TextBody(
          text:
              """AODV is a reactive routing protocol used in Mobile Ad Hoc Networks (MANETs) and Wireless Mesh Networks (WMNs). In AODV, route discovery is initiated through a broadcasted route request (RREQ) when a node requires a path to a destination. Nodes that receive this RREQ message either respond with a route reply (RREP) if they have routing information to the destination or forward the RREQ further until the destination or an intermediate node with a route to the destination is found. """),
      TextBody(
          text:
              """AODV also incorporates sequence numbers to ensure route freshness. Each node in the network maintains a sequence number that increases each time it updates its routing information. When a node sends or responds to a route request, it includes this sequence number, which helps other nodes determine the most recent and reliable path to a destination.This approach effectively resolves the common "counting-to-infinity" problem seen in distance vector protocols, as it allows nodes to distinguish between outdated and current routes, thereby preventing routing loops. When a break in an active route occurs, the affected node increases its sequence number and broadcasts a route error message, ensuring that any invalid routes are quickly updated or discarded."""),
      TextHeadlineTertiary(
          text: "Optimized Link State Routing (OLSR) Protocol"),
      TextBody(
          text:
              """OLSR is a proactive protocol. It discovers and maintains routing information. It regularly exchanges topology information with other nodes, ensuring each node has a complete view of the network's topology.A key feature of OLSR is the use of Multipoint Relays (MPRs). Each node selects a set of neighboring nodes as its MPRs based on the network topology. These MPRs are responsible for forwarding control traffic, reducing the number of transmissions required for routing information dissemination, and thus optimizing bandwidth usage. Only MPRs forward  control messages, reducing redundant message transmission and minimizing the broadcast storm problem common in ad hoc networks. """),
      TextBlockquote(
          text:
              """In routing protocols, control messages convey information about network topology and available routes. For example, in the Optimized Link State Routing (OLSR) protocol, Topology Control (TC) messages are used to distribute information about network topology."""),
      TextBody(
          text:
              """OLSR uses two types of control messages - Hello messages and Topology Control (TC) messages. Hello messages are used for neighbor detection and MPR selection, while TC messages are used to disseminate information about the MPR selectors, which helps in building the route tables.  Each node in an OLSR network maintains a routing table with entries for every other node in the network. These tables are updated based on the periodic control messages, ensuring that the most efficient routes are always known."""),
      TextHeadlineTertiary(text: "Dynamic Source Routing (DSR) Protocol"),
      TextBody(
          text:
              """DSR is a reactive routing protocol which does not require regular route advertisements.Nodes in the network maintain route caches that contain the source routes they are aware of. The use of route caching allows the network to reduce overhead and improve performance, as routes can often be determined from cached entries. When a packet is sent from a source to a destination, the entire route is included in the packet header. This means that each packet carries information about its own route through the network. If a link breakage in an active route occurs, a route error packet is sent back to the source node. The source node can then initiate a new route discovery process if necessary, or use an alternative route from its cache."""),
      TextBody(
          text:
              """Mesh networks make use of a semi-fixed infrastructure that introduces notable flexibility into broader networks with more extensive infrastructure, such as the Internet. The rapid emergence and evolution of Internet of Things (IoT) applications necessitate network structures that are not bound by rigid hierarchies but are instead capable of dynamically adjusting to varying conditions. This requirement for adaptability and resilience in network design is driving significant academic and industrial interest in the development of both hardware and protocols optimized for WMNs. The focus is on creating network infrastructures that are not only resilient and adaptable to changing environments but also capable of supporting the growing volume and variety of IoT devices and applications."""),
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
                  name: "Overview of Wireless Mesh Networks",
                  source:
                      """https://www.jocm.us/uploadfile/2013/1009/20131009055301450.pdf"""),
              SourceReferences(
                  name: "In House Mesh Routers",
                  source:
                      """https://www.nytimes.com/wirecutter/reviews/best-wi-fi-mesh-networking-kits/"""),
              SourceReferences(
                  name: "Wireless Mesh Networks",
                  source:
                      """Misra, S., Misra, S. C., & Woungang, I. (2009). Journey from mobile Ad Hoc networks to Wireless Mesh Networks. En Guide to Wireless Mesh Networks (Chapter 1). Springer London."""),
            ],
          )),
    ]));
