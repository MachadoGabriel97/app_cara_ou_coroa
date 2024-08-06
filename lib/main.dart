import 'package:cara_ou_coroa/Jogar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cara ou coroa',
      home: const MyHomePage(title: 'Cara ou coroa'),
      routes: {
        "/jogar": (context) => const Jogar()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      body: Center(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('imagens/logo.png'),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/jogar");
                    },
                    child: Image.asset('imagens/botao_jogar.png'),
                  )
                ]
            ),
      ),
    );
  }
}
