import 'package:flutter/material.dart';
import 'package:p/provider/counter_pov.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Provider"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterPov>(
            builder: (context, CounterPov, _) => Text("${CounterPov.number}"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Provider.of<CounterPov>(context, listen: false).increase();
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  Provider.of<CounterPov>(context, listen: false).decrease();
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
