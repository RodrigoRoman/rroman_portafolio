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

BlogItem iotPreds = BlogItem(
    blogOverview: BlogOverview(
        date: "5 Feb 2024",
        image: AppAssetNames.iotPredsMain,
        title: "IoT and its predecessors (WSN,M2M, CPS)",
        description:
            "The article explores the Internet of Things (IoT) as a transformative paradigm that integrates technologies from the past few decades, highlighting its evolution and potential to incorporate future innovations. It emphasizes the importance of understanding foundational technologies like Wireless Sensor Networks (WSN), Machine-to-Machine Communications (M2M), and Cyber-Physical Systems (CPS) that paved the way for IoT's development. By examining how IoT distinguishes itself from its predecessors, the article reveals a significant shift in connectivity and interaction with the world, underlining IoT's revolutionary impact across various sectors."),
    blogContent: Column(children: [
      ImageWrapper(image: AppAssetNames.iotPredsMain),
      TextHeadlinePrimary(text: "IoT and its predecessors (WSN,M2M, CPS)"),
      TextHeadlineSecondary(text: "IoT through the time"),
      TextBody(
          text:
              """The Internet of Things (IoT) represents a transformative paradigm that integrates and evolves from technologies spanning the final decades of the last century to the present, and even will integrate future innovations yet to emerge. This convergence of past, present, and future technologies underscores the significance of comprehending the foundational technologies that built the way for IoT's development. Equally crucial is an exploration of how IoT distinguishes itself from its predecessors, marking a distinct shift in how we connect and interact with the world around us. By delving into the lineage and unique characteristics of IoT, we gain insights into its revolutionary impact across various sectors, highlighting its role as a critical driver of technological advancement and societal change."""),
      TextBody(
          text:
              """A number of foundational technologies not only persists in their relevance and use today but also experiences continual evolution, development, and strategic re-engineering for seamless integration into the Internet of Things (IoT) ecosystem. Furthermore, these technologies occasionally carve out niche applications in scenarios where specific, indispensable features for IoT integrations are either lacking or do not necessitate modifications from their original designs. This article delves into and juxtaposes technologies such as Wireless Sensor Networks (WSN), Machine-to-Machine Communications (M2M), and Cyber-Physical Systems (CPS). By undertaking this comparative analysis, we aim to highlight the developmental arc of these technologies and underscore their instrumental contributions to the formation and expansion of the IoT paradigm."""),
      TextHeadlineSecondary(text: """Wireless-Sensor-Networks (WSN)"""),
      TextBody(
          text:
              """Wireless Sensor Networks (WSN) represent a sophisticated network architecture that employs spatially dispersed sensors to monitor and collect data from various environments, subsequently aggregating this information at a centralized location. Each node within the network incorporates a suite of components: a sensor for data acquisition, a processor for data handling, radio units for wireless communication, and typically, a battery for power. A usual configuration of WSN is the master-slave model, wherein a master node, often referred to as a gateway, collates data from numerous slave nodes. This gateway then transmits the consolidated data to a remote server, leveraging internet connectivity options such as cellular networks, another gateway, or directly via a backbone infrastructure. The communication among slave nodes is facilitated through short-range wireless technologies including Zigbee, Bluetooth, and WiFi, enabling efficient data exchange and network scalability."""),
      TextBody(
          text:
              """It's relevant to highlight that Wireless Sensor Networks (WSN) prioritize the collection of data across a specified geographical area, with less emphasis on identifying the specific nodes from which the data originates. The primary focus is on the value of the data itself, rather than its source within the network. For a WSN, the critical objective is to aggregate and analyze environmental or situational data to inform decision-making or actions, making the individual identity of each contributing node secondary to the overarching goal of comprehensive data acquisition."""),
      TextBody(
          text:
              """The design and deployment of WSNs adopt a bottom-up approach taking into account the unique needs of Wireless Sensor Network (WSN) nodes, such as scalability (where the network must expand in terms of nodes without detriment to performance, fault tolerance) ensuring continued operation despite the failure of individual components, and prolonged power consumption, where devices are typically replaced before their batteries need changing. Bottom-up strategy focuses primarily on addressing the challenges at the device layer. This methodology ensures that foundational aspects like device durability, efficient energy use, and robust network architecture are prioritized, laying a solid groundwork for the network's reliability, scalability, and overall performance."""),
      TextBody(
          text:
              """The applications of Wireless Sensor Networks (WSN) are diverse, extending across multiple domains from military surveillance for detecting enemy movements to healthcare monitoring of patients, tracking wildlife behavior and pollution levels, and overseeing a variety of industrial processes including worker safety, machinery condition, and inventory management. WSNs are adaptable to numerous implementation domains, each with its unique requirements and challenges. For instance, multimedia sensor networks focus on the retrieval of multimedia content such as videos, audios, and images, requiring high bandwidth and efficient data compression algorithms. Underwater sensor networks are tailored for aquatic environments, addressing specific challenges related to communication range and medium constraints. Similarly, underground sensors tackle the unique obstacles of subterranean environments, while wireless mobile sensors offer flexibility and dynamic data collection from moving sources. These varied applications underscore the versatility and adaptability of WSNs in providing targeted solutions across a wide spectrum of fields, each leveraging the technology to meet specific environmental and operational demands."""),
      TextHeadlineTertiary(text: """WSN v/s IoT"""),
      ImageWrapper(image: AppAssetNames.iotVSwsn),
      TextBody(
          text:
              """Unlike WSN, which employ a bottom-up approach due to the constrained hardware resources typical of sensor nodes, the Internet of Things (IoT) adopts a top-down strategy. This shift is largely because hardware resources in IoT environments are generally less restricted, allowing for more complex processing and data management capabilities. In the IoT realm, the data collected transcends mere measurements; it includes contextual information such as the precise physical address of each sensor. This requirement for detailed identification has necessitated the transition from IPv4 to IPv6, ensuring the network can accommodate the vast number of devices and sensors unique to IoT ecosystems. Furthermore, in IoT, data is not merely gathered for specific, narrow applications. Instead, it undergoes comprehensive analysis and is often integrated into cloud computing platforms or other global infrastructures for broader, more strategic purposes. This approach reflects the significant differences in infrastructure demands between IoT and traditional WSNs, with distinct considerations at every layer of the network architecture to support the expanded scope and scale of IoT applications."""),
      TextHeadlineSecondary(text: """Machine-to-Machine (M2M)"""),
      TextBody(
          text:
              """Machine-to-Machine (M2M) communication enables direct interactions between machines or devices without human intervention. In this system, devices transmit data over wireless or wired networks to cloud-based control and processing applications. The data encompasses both low bandwidth information from various sensors and potentially high bandwidth content. This versatile communication method allows for the integration of data from diverse sources, facilitating comprehensive monitoring and management across numerous applications and industries."""),
      TextBody(
          text:
              """M2M communication exemplifies seamless, automated interactions between devices to facilitate everyday activities. ATM machines are a prime example, enabling cash withdrawals and transactions autonomously, round-the-clock. Similarly, vending machines in malls utilize M2M to notify owners about inventory levels, ensuring timely restocking and maintenance. These examples underscore M2M's role in streamlining operations and enhancing service delivery, by providing critical data and alerts automatically, thereby optimizing business processes and improving user experiences."""),
      TextBody(
          text:
              """The foundation of M2M communication hinges on robust device management, enabling platforms to seamlessly add, remove, and update devices. It necessitates comprehensive user access control, including device permissions and service access, alongside user authentication mechanisms. Users must have the ability to query collected data and interact with connected actuators, with web and cloud access ensuring remote accessibility to data and devices via the internet. Finally, a unified platform should manage interoperability across diverse devices and communication protocols, simplifying integration and ensuring seamless operation across the M2M ecosystem."""),
      TextBody(
          text:
              """The architecture of Machine-to-Machine (M2M) communication typically consists of several key components working together to facilitate automated data exchange between devices without human intervention. M2M architecture includes:"""),
      TextBody(
          text:
              """  1. Devices/Sensors: Collect data from the environment or perform actions based on received commands."""),
      TextBody(
          text:
              """  2. Communication Networks: Enable data transmission between devices and the central system, using various technologies like cellular, Wi-Fi, or satellite."""),
      TextBody(
          text:
              """  3. M2M Gateway: Aggregates data from multiple devices, potentially performs initial processing, and routes data to the central system."""),
      TextBody(
          text:
              """  4. M2M Application Platform: A software layer that manages device connectivity, data processing, application logic, and user interaction."""),
      TextBody(
          text:
              """  5. User Interface: Allows stakeholders to monitor and control M2M applications, often through web or mobile applications."""),
      TextBody(
          text:
              """This architecture supports scalability, interoperability, and security, crucial for efficient M2M communication across different sectors."""),
      TextHeadlineTertiary(text: """M2M v/s IoT"""),
      ImageWrapper(image: AppAssetNames.iotVSm2m),
      TextBody(
          text:
              """M2M standards are integral to the IoT ecosystem, often considered within the IoT paradigm. While IoT broadly connects everyday objects to the internet for automation and data collection, M2M specifically enables direct device-to-device communication without human intervention. The scope of IoT is significantly broader, encompassing a vast array of devices from consumer electronics to smart city components, all connected for enhanced interaction and data exchange, extending beyond M2M's focus on industrial and infrastructural applications. Internet connectivity is essential for IoT's global reach, whereas M2M communications can operate effectively over both local and wide-area networks, tailored to specific industrial environments without the need for constant internet access. Furthermore, the design philosophies of M2M and IoT reflect their differing objectives; M2M systems are engineered to function autonomously, minimizing the need for user intervention, while IoT systems are designed with user interaction in mind, providing interfaces for control, monitoring, and data access. This fundamental difference underscores the complementary roles M2M and IoT play in the digital landscape, each addressing unique challenges and opportunities within the connected world."""),
      TextHeadlineSecondary(text: """Cyber-Physical Systems (CPS) """),
      TextBody(
          text:
              """Cyber-Physical Systems (CPS) represent a fusion of networking, information processing, sensing, and actuation capabilities, enabling physical devices to adapt and operate in dynamic environments. Primarily focused on monitoring and controlling the physical aspects of various sectors, including business and industry, CPS incorporates the crucial concept of 'human-in-the-loop'. This involves direct human oversight within the control loop, enhancing decision-making through continuous feedback from monitoring systems to actuators. These systems iteratively adjust their actions based on algorithmic analysis until the desired environmental state is achieved, ensuring precision in maintaining or altering physical world conditions."""),
      TextBody(
          text:
              """The 5C architecture for Cyber-Physical Systems (CPS) provides a structured framework in charge of integrating physical and computational processes. It consists of five key layers:"""),
      TextBody(
          text:
              """  1.Connection layer: This layer ensures that data from various sensors is efficiently and systematically collected. It focuses on establishing smooth and organized data gathering mechanisms."""),
      TextBody(
          text:
              """  2.Conversion layer: This layer ensures that the collected data is transformed into a standardized and uniform format. Given the diverse range of sensor types and data sources, standardization is crucial for correlating data and extracting meaningful insights from complex multidimensional datasets."""),
      TextBody(
          text:
              """  3.Cyber layer: Here, the emphasis is on data collection and predictive analysis, often leveraging digital twins of actual systems. Utilizing temporal and regression analyses of machine health and performance, this layer facilitates informed decision-making and anticipates future trends."""),
      TextBody(
          text:
              """  4.Cognition layer: This layer empowers the system with the ability to comprehend, learn, and make intelligent decisions. By incorporating machine learning algorithms and cognitive models, CPS can adapt to evolving environments and complex scenarios."""),
      TextBody(
          text:
              """  5.Configuration layer: This layer enables system optimization and adaptation by providing feedback mechanisms for adjusting the controlled environment. It fosters adaptability, self-configuration, and resilience, ensuring that CPS can dynamically respond to changing conditions and requirements."""),
      TextBody(
          text:
              """ The feedback system within this architecture is designed to be highly adaptive, self-configuring, and resilient, enhancing the overall performance and robustness of CPS implementations."""),
      TextHeadlineTertiary(text: """CPS v/s IoT"""),
      ImageWrapper(image: AppAssetNames.iotVScps),
      TextBody(
          text:
              """"While both IoT (Internet of Things) and CPS (Cyber-Physical Systems) share the goal of enhancing the interaction between the digital realm and the physical environment through information sensing and interactive technologies, they diverge in key aspects."""),
      TextBody(
          text:
              """IoT focuses primarily on networking and aims to interconnect all physical objects, thereby establishing an open network platform and infrastructure. Its primary emphasis lies in creating a vast interconnected network of devices and objects. On the other hand, CPS prioritizes information exchange and feedback mechanisms. In addition to sensing the physical world, CPS systems are designed to provide feedback and actively control physical processes, forming a closed-loop system. This closed-loop structure enables CPS to dynamically respond to changes in the environment and exert control over physical systems."""),
      TextBody(
          text:
              """CPS systems are uniquely designed to oversee the control of integrated organizational and physical processes. As such, they place particular emphasis on facilitating tight human-machine interaction, a facet often overlooked within the scope of the Internet of Things (IoT). This focus on human-machine interaction underscores CPS's ability to harmonize human decision-making with automated processes, enabling more seamless and efficient operations across various domains."""),
      TextBody(
          text:
              """Receiving feedback from digital twins allows physical systems to precisely adjust operations towards desired outcomes. Conversely, the IoT ecosystem does not mandate the presence of a feedback loop or digital twin for its operation. IoT devices are designed to autonomously gather and relay data from the physical world to digital platforms, enabling effective monitoring and control. This process occurs independently of virtual counterparts, showcasing the IoT's capacity to function and deliver value through direct interaction with the physical environment."""),
      TextBlockquote(
          text:
              """The vision for Digital Twins (DTs) is to offer a holistic representation of a component, product, or system, encompassing both its physical attributes and functional aspects. The initial stage entails crafting high-fidelity virtual models that accurately replicate the geometries, physical properties, behaviors, and operational principles observed in the real-world counterpart."""),
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
                  name: "Machine to Machine (M2M)",
                  source:
                      """https://www.intel.de/content/dam/doc/solution-brief/m2m-atom-gos-networks-gos-gateway.pdf"""),
              SourceReferences(
                  name: "M2M vs IoT ",
                  source:
                      """https://testbook.com/key-differences/difference-between-iot-and-m2m"""),
              SourceReferences(
                  name: "Cyber-physical systems and Internet of Things ",
                  source:
                      """https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.1900-202.pdf"""),
              SourceReferences(
                  name:
                      """Digital Twins and Cyber–Physical Systems toward Smart Manufacturing
and Industry 4.0: Correlation and Comparison""",
                  source:
                      """https://www.sciencedirect.com/science/article/pii/S209580991830612X"""),
              SourceReferences(
                  name: """Emergence of IoT""",
                  source:
                      """Misra, S., Mukherjee, A., & Roy, A. (2019). Introduction to IoT. Cambridge University Press."""),
            ],
          )),
    ]));
