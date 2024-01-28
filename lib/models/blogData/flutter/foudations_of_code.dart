import 'dart:html';

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
import 'package:news/screens/main/components/widget_components/github_code_section.dart';
import 'package:news/screens/main/components/widget_components/source_references.dart';

BlogItem foundationsOfCodeExcecution = BlogItem(
    blogOverview: BlogOverview(
        date: "25 June 2023",
        image: AppAssetNames.foundations,
        title:
            "Foundations of Code Execution: A Dive into Compilation and Interpretation",
        description:
            "Diving deep into the world of programming, we often encounter the term 'machine code'. But what is it? Simply put, it's the language our CPU understands. However, writing directly in machine code is a Herculean task. This is where compilation comes in, acting as a bridge between high-level languages and machine code. Dart, the language used in Flutter, has its unique approach to this process. From the intricacies of machine code to Dart's compilation mechanisms, let's embark on a journey to understand the magic behind the scenes.."),
    blogContent: Column(children: [
      ImageWrapper(image: AppAssetNames.foundations),
      TextHeadlinePrimary(
          text:
              "Foundations of Code Execution: A Dive into Compilation and Interpretation"),
      TextHeadlineSecondary(text: "What is compilation?"),
      SizedBox(
          height: 400,
          child: Center(
              child: ImageWrapper(
                  image:
                      "${AppAssetNames.imgPath}/foundation_excecution/compilation_diagram.jpg"))),
      TextBody(
          text:
              """A compiler is responsible for converting source code written in a high-level programming language into a low-level language, such as assembly, object code, or direct machine code. This transformation culminates in the creation of an executable file. One of the primary advantages of this process is that the executable can be distributed and run on multiple machines with a similar architecture, without revealing the original source code, ensuring intellectual property remains confidential. Furthermore, programs written in compiled languages often exhibit superior performance compared to those in interpreted languages. This speed advantage stems from the fact that compiled code is inherently closer to the machine code, allowing the computer's hardware to execute it more directly and efficiently. By eliminating the need for an intermediary layer of interpretation during execution, compilers enable software to run seamlessly and at optimized speeds."""),
      TextHeadlineTertiary(text: "How it works?"),
      TextBody(
          text:
              """Let's begin with the basics. The set of instructions that a CPU can interpret is known as machine code. This language is purely numerical. Each processor has its unique instruction set, which reflects the computer's architecture. Beyond this, systems can vary in terms of memory configuration, operating systems, and peripheral devices. Due to these variations, different systems usually cannot execute the same machine code."""),
      TextBody(
          text:
              """If you're familiar with Assembly language, you'll know that its instructions mirror those executed by the processor. Each assembly instruction aligns with a specific processor operation, be it arithmetic tasks, memory access, or control flow instructions. However, Assembly isn't pure machine code. This is because it introduces a layer of interpretation, where opcodes and operators are translated into human-readable strings. While it's feasible to write directly in machine code, managing individual bits and tracking memory becomes a complex endeavor"""),
      TextBody(
          text:
              """In essence, machine code represents the most fundamental level of programming detail accessible to developers. However, many processors internally utilize micro-code. Complex tasks might necessitate executing multiple machine code instructions in a precise order. To streamline this and enhance efficiency, micro-operations come into play. These are intricate, specific instructions the processor executes, breaking down complex machine instructions (macro-instructions) into more digestible steps."""),
      TextBody(
          text:
              """While executing a macro-instruction, the processor undertakes a sequence of micro-operations. These micro-operations conduct fundamental tasks on data within registers, ranging from data transfers between registers to arithmetic and logical functions. By breaking macro-instructions into micro-operations, the processor adeptly manages and carries out intricate tasks. Basically, micro-operations serve as the foundational elements that facilitate the execution of the complex tasks denoted by macro-instructions. They streamline the execution, allowing the processor to address detailed operations by segmenting them into more digestible actions."""),
      TextBlockquote(
          text:
              "Lower than microcode would only be the logic gates which are implemented into the digital circuits."),
      TextHeadlineTertiary(text: "Bytecode"),
      TextBody(
          text:
              """Bytecode serves as another crucial layer in the programming hierarchy. Bytecode is an instruction set specifically crafted for efficient interpretation by software. This design choice makes bytecode swifter and more straightforward to interpret than raw source code, primarily because it's structured to be more akin to machine code. Essentially, bytecode bridges the gap between source code and machine code, acting as an intermediate layer. Its introduction aids in streamlining the interpretation of programming language code, ensuring a smoother transition from high-level language to the direct instructions a processor can execute."""),
      TextBody(
          text:
              """Bytecode plays a pivotal role in enhancing hardware and operating system independence, facilitating cross-platform compatibility. By translating source code into bytecode, the resultant code can seamlessly operate across diverse platforms and devices without necessitating recompilation. This universality is attributed to the bytecode's design to run on a virtual machine—a software construct that simulates a computer system. The virtual machine takes on the task of executing the bytecode instructions. A prime exemplar of this methodology is Java. Originally conceived to maximize code portability, Java's architecture ensures that the same code can function on a desktop, a microwave, or a servlet, all made feasible through the intermediary of a virtual machine."""),
      TextBody(
          text:
              """Alternatively, bytecode can also be further compiled into machine code for better performance. This process involves converting the bytecode instructions into the specific machine code instructions of the target hardware. By doing so, the program can achieve better performance because it is executed natively by the underlying hardware without the interpretation overhead of the virtual machine."""),
      TextHeadlineSecondary(text: """What is interpretation?"""),
      SizedBox(
          height: 400,
          child: Center(
              child: ImageWrapper(
                  image:
                      "${AppAssetNames.imgPath}/foundation_excecution/interpretation_diagram.jpg"))),
      TextBody(
          text:
              """Unlike compiled languages that translate the entire source code into machine code before execution, interpreted languages run instructions directly from the source code without this intermediate step. While interpreters don't generate machine code in the traditional sense like compilers, they still enable the execution of high-level code on hardware. The method—be it direct interpretation, conversion to an intermediate form, or real-time machine code generation—varies based on the interpreter and the language's architecture."""),
      TextBlockquote(
          text:
              "A script is a type of program wherein the source code itself serves as the program"),
      TextBody(
          text:
              """Scripts offer notable portability; a machine with the requisite interpreter can run the program with minimal to no modifications. However, this flexibility is a double-edged sword: if the interpreter isn't present, the program won't run. Typically, interpreted programs trade off speed for ease of debugging and adaptability, making them slower than their compiled counterparts but more straightforward to modify and troubleshoot."""),
      TextHeadlineSecondary(
          text: """How do Java and Dart fit within these two approaches?"""),
      SizedBox(
          height: 400,
          child: Center(
              child: ImageWrapper(
                  image:
                      "${AppAssetNames.imgPath}/foundation_excecution/environment_diagram.jpg"))),
      TextBody(
          text:
              """Between traditional compiled programs and interpreted scripts lies a category of programs designed for runtime environments, such as those used by Java and Dart. In this approach, instead of converting source code directly into machine language, it's transformed into bytecode. This bytecode is then interpreted or compiled on-the-fly by a "virtual machine" within the runtime environment, which translates it into machine-specific instructions. One significant advantage is the use of "just-in-time" compiling, where only necessary parts of the code are compiled, optimizing execution."""),
      TextBody(
          text:
              """A key distinction between compiled languages and environment-based languages lies in their portability from a developer's standpoint. Java code, for instance, can be executed across various environments without recompilation. Consider the C programming language; while it isn't inherently non-portable, its binding to a specific OS can pose challenges. In contrast, Java's portability stems from its reliance on a virtual machine, ensuring it isn't bound to any particular architecture during compilation. The bytecode produced by the Java compiler can run on any system equipped with a JVM."""),
      SizedBox(
        height: 100,
      ),
      Divider(color: Color(0xFFEEEEEE), thickness: 1),
      Container(
          padding: kMarginVertical48,
          height: (kMarginBottom48.bottom * 5) + 100 * 1,
          child: Column(
            children: [
              SourceReferences(
                  name: "Compiler and Interpreter",
                  source:
                      """https://kb.iu.edu/d/agsz#:~:text=An%20interpreter%20produces%20a%20result,computer%2C%20depending%20upon%20its%20architecture."""),
              SourceReferences(
                  name: "Compiler",
                  source: """https://en.wikipedia.org/wiki/Compiler"""),
              SourceReferences(
                  name: "Interpreter",
                  source:
                      """https://en.wikipedia.org/wiki/Interpreter_(computing)""")
            ],
          )),
    ]));
