#import "../lib.typ": documentclass, algox, tablex

#let (
  info,
  doc,
  cover,
  declare,
  appendix,
  outline,
  mainmatter,
  conclusion,
  abstract,
  bib,
  acknowledgement,
  under-cover,
) = documentclass(
  info: (
    title: "多模态表征的非线形相关性研究",
    school: "计算机工程与科学学院",
    major: "计算机科学与技术",
    student_id: "21121889",
    name: "陆诗雨",
    supervisor: "王含章",
    date: "2024.12-2025.5",
  ),
)

#show: doc
#cover()
#declare()

#abstract(
  keywords: ("多模态模型", "非线形相关性", "模态融合", "评估模态对齐"),
  keywords-en: ("multimodal model", "nolinear correlation", "modality interface", "eval alignment"),
)[
  摘要的内容需作者简要介绍本论文的主要内容主要为本人所完成的工作和创新点。

  ……

  (注：标题黑体小二号，正文宋体小四，行距20磅)
][
  The content of the abstract requires the author to briefly introduce the main content of this paper, mainly for my work and innovation.

  …….

  (Times New Roman，小四号，行距20磅)
]

#outline()

#show: mainmatter
= 绪论

== 引言
在人类社会及科技发展的过程中，对于多个模态信息的呈现、处理和理解需求一直存在。早期人们希望可以实现多媒体传播来传递例如视频、图像、文本等信息，这促进了互联网技术和多媒体技术的发展。随着近年来人工智能技术的快速发展，人们希望构建一种通用的智能体来处理并帮助理解多个模态之间的信息，例如根据输入的描述从视频中提取关键帧，根据上传的图像及问题生成相应的回答，亦或是根据描述快速地从海量数据中检索出感兴趣的图像等。这促进了人们对于多模态研究的关注程度，多模态研究的重要程度在于提供了一种高效准确的多信息处理方式以及构建通用人工智能的能力，这也是人工智能发展的核心愿景。

近年来随着算力的提升和数据集数量的增加，模型朝着大规模的方向发展。通过扩展模型参数量和训练数据量，在大型语言模型（LLM）和大型视觉模型（LVM）领域有了显著的进展。大型语言模型在文本生成（Text Generation），文本理解（ICL），指令跟随(Instruct Following)等任务上的能力呈现出了优异的水平；大型视觉模型在目标检测（Object Detection），图像分割（Image Segmentation），图像分类（Image Classification）等任务上也表现出了令人印象深刻的性能。随着大模型在各自模态中的成功，研究者们开始关注在多模态领域中的进一步研究，多模态模型的正式定义是指具有同时处理和理解多种模态（如文本、图像等模态）的信息的能力，并且进一步可以完成多模态任务如图文检索（Iamge-Text Retrieval），视觉问答（Visual Qusetion Answer）的模型。一个直接的思路是应用在各自模态中取得显著性能的大模型，然而，如何有效地将不同模态的信息进行融合并且让多模态模型准确地理解来自不同模态的信息来完成多模态任务是多模态领域中的关键问题。

在多模态领域的研究历史中，研究者们倾向于首先为每个模态选取一个表现优异的单模态模型，这些单模态模型往往是预训练好的，而将研究的主要工作放在设计不同种模态表征之间的融合方式上。多模态领域的早期工作中，融合不同模态的表征采取了简单直接的方式。以视觉-语言的多模态模型为例，在Neural Image Caption @vinyals2015show 的工作中，图像表征由图像在卷积神经网络（CNN）的最后一层隐藏层得到，并直接送入循环神经网络（RNN）的decoder中进行图像描述生成；在Deeper LSTM and normalized CNN @Lu2015 的工作中，对由卷积神经网络得到的图像嵌入向量和由长短期记忆网络（LSTM）
得到的问题文本的嵌入向量进行逐点相乘，得到一个新的向量作为图像和文本的融合表征并在之后送入多层分类器去预测词语的概率分布。之后，研究者们尝试

因此，本文的主要研究内容如下几点：

=== 三级标题

......

==== 四级标题

......

== 本文研究主要内容

本文......

== 本文研究意义

本文......

== 本章小结

本文......

= 格式要求


正文各章节应拟标题，每章结束后应另起一页。标题要简明扼要，不应使用标点符号。各章、节、条的层次，可以按照“1……、1.1……、1.1.1……”标识，条以下具体款项的层次依次按照“1.1.1.1”或“（1）”、“①”等标识。各学院根据实际情况，可自行规定层次格式，但学院之内建议格式统一，以清晰无误为准@liu_survey_2024。

正文是毕业论文的主体和核心部分，不同学科专业和不同的选题可以有不同的写作方式。正文一般包括以下几个方面。

== 引言或背景
引言是论文正文的开端，引言应包括毕业论文选题的背景、目的和意义；对国内外研究现状和相关领域中已有的研究成果的简要评述；介绍本项研究工作研究设想、研究方法或实验设计、理论依据或实验基础；涉及范围和预期结果等。要求言简意赅，注意不要与摘要雷同或成为摘要的注解。

== 主体
论文主体是毕业论文的主要部分，必须言之成理，论据可靠，严格遵循本学科国际通行的学术规范。在写作上要注意结构合理、层次分明、重点突出，章节标题、公式图表符号必须规范统一。论文主体的内容根据不同学科有不同的特点，一般应包括以下几个方面：
+ 毕业设计（论文）总体方案或选题的论证；
+ 毕业设计（论文）各部分的设计实现，包括实验数据的获取、数据可行性及有效性的处理与分析、各部分的设计计算等；
+ 对研究内容及成果的客观阐述，包括理论依据、创新见解、创造性成果及其改进与实际应用价值等；
+ 论文主体的所有数据必须真实可靠，自然科学论文应推理正确、结论清晰；人文和社会学科的论文应把握论点正确、论证充分、论据可靠，恰当运用系统分析和比较研究的方法进行模型或方案设计，注重实证研究和案例分析，根据分析结果提出建议和改进措施等。

== 结论
结论是毕业论文的总结，是整篇论文的归宿。应精炼、准确、完整。着重阐述自己的创造性成果及其在本研究领域中的意义、作用，还可进一步提出需要讨论的问题和建议。





= 图表格式

== 图格式
#figure(
  image(
    "figures/energy-distribution.png",
    width: 70%,
  ),
  kind: "image",
  supplement: [图],
  caption: [Energy distribution along radial], // 英文图例
)<image>

#v(1.5em)

// 图的引用请以 img 开头
如 @img:image 所示，......

== 表格格式
// 表的引用请以 tbl 开头
我们来看 @tbl:table，

可以续表:
\
\
\

#tablex(
  ..for i in range(15) {
    ([250], [88], [5900], [1.65])
  },
  header: (
    [感应频率 #linebreak() (kHz)],
    [感应发生器功率 #linebreak() (%×80kW)],
    [工件移动速度 #linebreak() (mm/min)],
    [感应圈与零件间隙 #linebreak() (mm)],
  ),
  columns: (1fr, 1fr, 1fr, 1fr),
  colnum: 4,
  caption: [66666666],
  label-name: "table",
)


== 公式格式

// 公式的引用请以 eqt 开头
我要引用 @eqt:equation。

$ 1 / mu nabla^2 Alpha - j omega sigma Alpha - nabla(1/mu) times (nabla times Alpha) + J_0 = 0 $<equation>

== 算法格式
我要引用 @algo:algorithm

算法也可以续：
#v(10em)
#[
  #import "@preview/lovelace:0.2.0": *
  #algox(
    label-name: "algorithm",
    caption: [欧几里得辗转相除],
    pseudocode(
      no-number,
      [#h(-1.25em) *input:* integers $a$ and $b$],
      no-number,
      [#h(-1.25em) *output:* greatest common divisor of $a$ and $b$],
      [*while* $a != b$ *do*],
      ind,
      [*if* $a > b$ *then*],
      ind,
      $a <- a - b$,
      ded,
      [*else*],
      ind,
      $b <- b - a$,
      ded,
      [*end*],
      ded,
      [*end*],
      [*return* $a$],
    ),
  )
]

也可以直接插入代码：
#algox(
  label-name: "algorithm-1",
  caption: [欧几里得辗转相除C++实现],
  [
    ```cpp
    #include <bits/stdc++.h>
    using namespace std;
    int gcd(int a, int b) {
      while (a != b) {
        if (a > b) a -= b;
        else b -= a;
      }
      return a;
    }
    ```
  ],
)

== 本章小结

本章介绍了……

#conclusion[
  结论是毕业论文的总结，是整篇论文的归宿。应精炼、准确、完整。着重阐述自己的创造性成果及其在本研究领域中的意义、作用，还可进一步提出需要讨论的问题和建议。
]

// 参考文献
#bib(bibfunc: bibliography("ref.bib")) // full: false 表示只显示已引用的文献，不显示未引用的文献；true 表示显示所有文献

#show: appendix

= 附录格式

论文附录依次用大写字母“附录A、附录B、附录C……”表示，附录内的分级序号可采用“附A1、附A1.1、附A1.1.1”等表示，图、表、公式均依此类推为“图A1、表A1、式（A1）”等。包含以下内容：

（1）代码、图表、标准、手册等数据；

（2）未发表过的一手文献；

（3）公式推导与证明、调查表等；

（4）辅助性教学工具或表格；

（5）其他需要展示或说明的内容

……

（标题黑体小二号，内容Times New Roman/宋体，小四号，行距20磅）

== 测试1

#figure(
  image(
    "figures/energy-distribution.png",
    width: 70%,
  ),
  kind: "image",
  supplement: [图],
  caption: [Energy distribution along radial], // 英文图例
)<image2>
......

=== 测试1.1

#figure(
  image(
    "figures/energy-distribution.png",
    width: 70%,
  ),
  kind: "image",
  supplement: [图],
  caption: [Energy distribution along radial], // 英文图例
)<image3>

= 测试2
#figure(
  image(
    "figures/energy-distribution.png",
    width: 70%,
  ),
  kind: "image",
  supplement: [图],
  caption: [Energy distribution along radial], // 英文图例
)<image4>

......

#acknowledgement(location: "上海大学")[
  表达真情实感即可。

  （致谢部分切勿照搬，本部分内容也在论文查重范围之内）

  （格式：宋体，Times New Roman小四号字，两边对齐，首行缩进2个字符，行距23磅，字符间距为“标准”）

]

#under-cover()
