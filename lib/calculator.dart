import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output="0";
  String _output="0";
  double num1=0;
  double num2=0;
  String operand=" ";

  buttonPressed(String buttonText) {
    if (buttonText == "AC") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = " ";
    }
    else if (buttonText == "+" || buttonText == "-" ||
        buttonText == "*" || buttonText == "/") {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    }
    else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("already contains a decimal");
      } else {
        _output = _output + buttonText;
      }
    }
    else if (buttonText == "=") {
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operand = " ";
    } else {
      _output = _output + buttonText;
    }
    print(_output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(0);
    });
  }
  /*Widget buildButton(String buttonText) {
    return ElevatedButton(child: Text(buttonText),
        onPressed: () => buttonPressed(buttonText)
    );
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 270,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: ()  {},
                      child: const Text(
                        "AC",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {}, child: Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                    onPressed: () {},
                    child: const Text(
                      "%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "/",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "7",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {}, child: const  Text(
                      "8",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "9",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "X",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "4",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {}, child: const  Text(
                      "5",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "6",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),



              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child:const  Text(
                        "1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {}, child:  const Text(
                      "2",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "3",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "+",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "+/-",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {}, child: const  Text(
                      "0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child:const  Text(
                        ".",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "=",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              )




            ],
          ),
        ),
      ),
    );
  }


}

