

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  int _number = 0;
  String c = '';
  //int sum;
  final firstNumber = TextEditingController();
  final secondNumber = TextEditingController();
  //final firstNumber = TextEditingController();


  // TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Image.network(

                'https://media.wired.com/photos/5c83066025da7204699767c7/16:9/w_2400,h_1350,c_limit/calculator-1470.jpg',
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),

             Padding(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: TextField(
                controller: firstNumber,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter the first number'
                ),
                keyboardType: TextInputType.number,
              )
            ),
             Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
                child: TextField(
                  controller: secondNumber,
                  decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      hintText: 'Enter the first number'
                  ),
                )
            ),
            SizedBox(
              height: 20,
            ),
            Text('${_number}'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [

                ElevatedButton(

              child: Text(" +"),
              onPressed: (){

                setState(() {
                  _number;
                });
                _number = int.parse(firstNumber.text) + int.parse(secondNumber.text);
                  var firstnumber = firstNumber.text;
                  var secondnumber = secondNumber.text;
                  //String sum = firstnumber + secondnumber;
                  print("Tong la ${int.parse(firstNumber.text) + int.parse(secondNumber.text)}");
              },
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              //
              // )
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                      minimumSize: const Size(100, 50),
                  )
              // color: Colors.red,
              // textColor: Colors.white,
              // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
                SizedBox(
                  width: 25,
                ),
            ElevatedButton(
                child: Text("-"),
                onPressed: (){
                  setState(() {
                    _number;
                  });
                  _number = int.parse(firstNumber.text) - int.parse(secondNumber.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  minimumSize: const Size(100, 50),

                )
            ),
                SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                    child: Text("* "),
                    onPressed: (){
                      setState(() {
                        _number;
                      });
                      _number = int.parse(firstNumber.text) * int.parse(secondNumber.text);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      minimumSize: const Size(100, 50),
                    )
                ),
                SizedBox(
                  width: 25,
                ),

                ElevatedButton(
                    child: Text(" / "),
                    onPressed: (){
                      setState(() {
                        _number;
                      });
                      _number = (int.parse(firstNumber.text) / int.parse(secondNumber.text)).round();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: const Size(100, 50),
                    )
                )
              ],
            )
          ]


        ),
      )
    );
  }
}

