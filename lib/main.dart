import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "This is Material App",
      home: Calculator(),
    ));

paddingtext(int left, int right, int bottom, int top) {
  final padding = EdgeInsets.only(
      left: left.toDouble(),
      right: right.toDouble(),
      bottom: bottom.toDouble(),
      top: top.toDouble());
  return padding;
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController textcontroller = TextEditingController();
  String text = "";

  allnumbersandicondeco(String text, TextStyle textstyle) {
    final contdecoration = Container(
      width: 70,
      child: Center(
        child: Text(
          text,
          style: textstyle,
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 92, 213, 246)),
    );
    return contdecoration;
  }

  makingrows(String col1, col2, col3, col4, TextStyle textstyle) {
    final row = Row(
      children: [
        Padding(
          padding: paddingtext(10, 0, 0, 0),
          child: InkWell(
            child: allnumbersandicondeco(col1, textstyle),
            onTap: () {
              print(col1);
              if (col1 == '1') {
                print("This is one");
              }
              if (col1 == '4') {
                print("This is four");
              }
              if (col1 == '7') {
                print("This is seven");
              }
              text += col1;
              setState(() {});
            },
          ),
        ),
        Padding(
          padding: paddingtext(20, 0, 0, 0),
          child: InkWell(
            child: allnumbersandicondeco(col2, textstyle),
            onTap: () {
              if (col2 == '2') {
                print("This is two");
              }
              if (col2 == '5') {
                print("This is five");
              }
              if (col2 == '8') {
                print("This is eight");
              }
              if (col2 == 'bs') {
                text = backspacefuntion(text);
              }
              if (col2 != "bs") text += col2;
              setState(() {});
            },
          ),
        ),
        Padding(
          padding: paddingtext(20, 0, 0, 0),
          child: InkWell(
            child: allnumbersandicondeco(col3, textstyle),
            onTap: () {
              if (col3 == '3') {
                print("This is three");
              }
              if (col3 == '6') {
                print("This is six");
              }
              if (col3 == '9') {
                print("This is nine");
              }
              if (col3 == '%') {
                print("This is %");
              }
              text += col3;
              setState(() {});
            },
          ),
        ),
        Padding(
          padding: paddingtext(20, 0, 0, 0),
          child: InkWell(
            child: allnumbersandicondeco(col4, textstyle),
            onTap: () {
              if (col4 == '+') {
                print("This is +");
              }
              if (col4 == '-') {
                print("This is -");
              }
              if (col4 == '*') {
                print("This is *");
              }
              if (col4 == '/') {
                print("THisis /");
              }
              text += col4;

              setState(() {});
            },
          ),
        ),
      ],
    );
    return row;
  }

  sizebox(int num) {
    return SizedBox(
      height: num.toDouble(),
    );
  }

  backspacefuntion(String text) {
    var arrr = [];
    print("Thisi si ");
    print(text);
    for (int i = 0; i < text.length - 1; i++) {
      arrr.add(text[i]);
    }
    text = "";
    for (int j = 0; j < arrr.length; j++) {
      text += arrr[j];
    }

    return text;
  }

  resultshere(String calc) {
    List<dynamic> ishan = [];

    for (int i = 0; i < calc.length; i++) {
      calc.split('+');
    }
    print(calc);
  }

  static String ishan = '';
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final textstyle = TextStyle(
        color: Colors.blue, fontSize: 40, fontWeight: FontWeight.bold);
    SingleChildRenderObjectWidget value = sizebox(10);

    return Scaffold(
        appBar: AppBar(
            title: Title(
                color: Color.fromARGB(255, 4, 112, 252),
                child: Text("Basics Calculator"))),
        body: Column(children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 0, top: 30),
              child: Container(
                color: Color.fromARGB(255, 224, 214, 214),
                height: 100,
                width: 400,
                child: Text(text,
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Container(
                padding: EdgeInsets.only(left: 150, top: 0),
                color: Color.fromARGB(255, 221, 219, 219),
                height: 50,
                width: 260,
                child: Text("=" + resultshere(text.toString()).toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            child: Padding(
              padding: paddingtext(250, 0, 0, 0),
              child: allnumbersandicondeco("=", textstyle),
            ),
            onTap: () {
              setState(() {
                print(resultshere(text.toString()).toString());
                ishan = resultshere(text.toString()).toString();
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Column(children: [
            makingrows("1", "2", "3", "+", textstyle),
            value,
            makingrows("4", "5", "6", "-", textstyle),
            value,
            makingrows("7", "8", "9", "*", textstyle),
            value,
            makingrows("", "bs", "%", "/", textstyle)
          ])
          // Row(
          //   children: [
          //     Padding(
          //       padding: paddingtext(10, 0, 0, 0),
          //       child: InkWell(
          //         child: allnumbersandicondeco("+", textstyle),
          //         onTap: () {},
          //       ),
          //     ),
          //     Padding(
          //       padding: paddingtext(20, 0, 0, 0),
          //       child: InkWell(
          //         child: allnumbersandicondeco("+", textstyle),
          //         onTap: () {},
          //       ),
          //     ),
          //     Padding(
          //       padding: paddingtext(20, 0, 0, 0),
          //       child: InkWell(
          //         child: allnumbersandicondeco("+", textstyle),
          //         onTap: () {},
          //       ),
          //     ),
          //     Padding(
          //       padding: paddingtext(20, 0, 0, 0),
          //       child: InkWell(
          //         child: allnumbersandicondeco("+", textstyle),
          //         onTap: () {},
          //       ),
          //     ),
          //   ],
          // ),
        ]));
  }
}
