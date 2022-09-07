import 'dart:math';
import 'package:flutter/material.dart';
import 'package:practice_flutter/practice_work/login_page_practice.dart';

class LotteryApp extends StatefulWidget {
  static const String id = 'LotteryApp';

  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  TextEditingController check = TextEditingController();
  Random randomno = Random();
  int x = 0;
  int number = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lottery App",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Rubik-Medium',
          ),
        ),
        backgroundColor: Colors.white54,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            TextFormField(
              controller: check,
              decoration: InputDecoration(
                hintText: 'Select a Number From 1 to 10',
                labelText: 'Enter Your Guss In Numbers',
                hintStyle: TextStyle(color: Colors.red.withOpacity(.5)),
                fillColor: Colors.greenAccent.withOpacity(.15),
                filled: true,
                labelStyle: TextStyle(
                    color: Colors.greenAccent, fontFamily: 'Pacifico'),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 200,
              transform: Matrix4.rotationZ(-0.01),
              decoration: BoxDecoration(
                  color: Colors.yellowAccent.withOpacity(.2),
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                    )
                  ]),
              child: x == number
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done_all,
                          color: Colors.green,
                          size: 40,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Congratulation You have Guss the Correct Answer",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 40,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Failed To Get the Correct Guess Try again",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: 10001,
                itemBuilder: (context, index) {
                  return Text("Item $index");
                },
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, LoginMyApp.id);
              },
              child: Container(
                child: Text("NextPage"),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = randomno.nextInt(10);
          setState(() {});
          print(x.toString());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
