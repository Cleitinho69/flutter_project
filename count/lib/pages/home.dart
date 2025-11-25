import 'package:count/controllers/bringhtnessController.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Contador')),
      body: Container(
        // ajustar tamanho para ocupar a tela toda
        width: double.infinity,
        height: double.infinity,
        // coluna
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $count', style: TextStyle(fontSize: 30)),
            SwitchTheme(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          setState(() {
            count++;
          }),
        },
      ),
    );
  }
}

class SwitchTheme extends StatelessWidget {
  const SwitchTheme({super.key});
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: BringhtnessController.instance.isDark,
      onChanged: (value) {
        BringhtnessController.instance.changeTheme();
      },
    );
  }
}
