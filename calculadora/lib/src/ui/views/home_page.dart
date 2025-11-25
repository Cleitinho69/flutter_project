import 'package:calculadora/src/ui/widgets/btn.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50,
                      left: 20,
                      right: 20,
                    ),
                    child: Text('12', style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 1.5,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 25),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Wrap(
                  children: [
                    Btn(btn: 'C'),
                    Btn(btn: '()'),
                    Btn(btn: '%'),
                    Btn(btn: '/'),
                    Btn(btn: '7'),
                    Btn(btn: '8'),
                    Btn(btn: '9'),
                    Btn(btn: 'X'),
                    Btn(btn: '4'),
                    Btn(btn: '5'),
                    Btn(btn: '6'),
                    Btn(btn: '-'),
                    Btn(btn: '1'),
                    Btn(btn: '2'),
                    Btn(btn: '3'),
                    Btn(btn: '+'),
                    Btn(btn: '+/-'),
                    Btn(btn: '0'),
                    Btn(btn: ','),
                    Btn(btn: '='),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
