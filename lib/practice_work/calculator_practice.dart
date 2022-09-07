import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: Column(
              children: [
                Text("0"),
                Text("0"),
              ],
            ),
            ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  children: [
                    MyButton(
                      value: 'AC',
                    ),
                    MyButton(
                      value: '+/-',
                    ),
                    MyButton(
                      value: '%',
                    ),
                    MyButton(
                      value: '/',ButtonColor: Colors.orange,
                    ),

                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      value: 'AC',
                    ),
                    MyButton(
                      value: '+/-',
                    ),
                    MyButton(
                      value: '%',
                    ),
                    MyButton(
                      value: '/',ButtonColor: Colors.orange,
                    ),

                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      value: 'AC',
                    ),
                    MyButton(
                      value: '+/-',
                    ),
                    MyButton(
                      value: '%',
                    ),
                    MyButton(
                      value: '/',ButtonColor: Colors.orange,
                    ),

                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      value: 'AC',
                    ),
                    MyButton(
                      value: '+/-',
                    ),
                    MyButton(
                      value: '%',
                    ),
                    MyButton(
                      value: '/',ButtonColor: Colors.orange,
                    ),

                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      value: 'AC',
                    ),
                    MyButton(
                      value: '+/-',
                    ),
                    MyButton(
                      value: '%',
                    ),
                    MyButton(
                      value: '/',ButtonColor: Colors.orange,
                    ),

                  ],
                ),

              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  String value = '' ;
  Color ButtonColor;
  MyButton({Key? key, required this.value,this.ButtonColor=Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: ButtonColor,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
