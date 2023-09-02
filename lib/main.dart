import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CounterScreen(),
    ),
  );
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var resultado = 0;

  add() {
    setState(() {
      resultado++;
    });
  }

  sub() {
    setState(() {
      resultado--;
    });
  }

  reset() {
    setState(() {
      resultado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Você pressionou o botão: ",
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(
                fontSize: 34.0,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(function: reset, icon: Icons.autorenew),
          CustomButton(function: add, icon: Icons.add),
          CustomButton(function: sub, icon: Icons.remove),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Function function;
  final IconData icon;

  const CustomButton({Key? key, required this.function, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        function();
      },
      child: Icon(icon),
    );
  }
}
