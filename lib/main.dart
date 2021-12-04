import 'package:consumerdemo/button.dart';
import 'package:consumerdemo/provider_code.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CALCULATOR',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HandleCalculator>(
      create: (_) {
        return HandleCalculator();
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Center(
                child: Consumer<HandleCalculator>(
                  builder: (_, cal, __) => Text(
                    cal.output,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Consumer<HandleCalculator>(
              builder: (_, cal, __) {
                return GridView.count(
                  crossAxisCount: 4,
                  children: [
                    TextButton(
                      onPressed: () {
                        cal.cancelTap();
                      },
                      child: butC,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.cancelTap();
                      },
                      child: butpercent,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.cancelTap();
                      },
                      child: but$,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.operatorTap('/');
                      },
                      child: butdiv,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 7);
                      },
                      child: but7,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 8);
                      },
                      child: but8,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 9);
                      },
                      child: but9,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.operatorTap('+');
                      },
                      child: butsum,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 4);
                      },
                      child: but4,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 5);
                      },
                      child: but5,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 6);
                      },
                      child: but6,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.operatorTap('-');
                      },
                      child: butsub,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 1);
                      },
                      child: but1,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 2);
                      },
                      child: but2,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 3);
                      },
                      child: but3,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.operatorTap('*');
                      },
                      child: butmul,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.inputNumberTap(n: 0);
                      },
                      child: but0,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.cancelTap();
                      },
                      child: butdot,
                    ),
                    TextButton(
                      onPressed: () {
                        cal.calc();
                      },
                      child: butequal,
                    ),
                  ],
                );
              },
            ),
            flex: 8,
          ),
        ],
      ),
    );
  }
}
