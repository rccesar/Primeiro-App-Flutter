import 'package:flutter/material.dart';
import 'segunda_screen.dart'; // Importa a tela de comparação entre Flutter e React Native

// Função principal que inicia o aplicativo Flutter
void main() {
  runApp(const MyApp()); // Executa o widget principal da aplicação
}

// Widget principal da aplicação
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Título do aplicativo
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Tema com esquema de cores
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // Tela inicial do app
    );
  }
}

// Widget da tela inicial com estado
class MyHomePage extends StatelessWidget {
  final String title; // Título passado por parâmetro

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Cor do AppBar
        title: Text(title), // Título do AppBar
      ),
      body: Center(
        // Centraliza o conteúdo na tela
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          children: <Widget>[
            // Texto principal
            const Text(
              'Meu Primeiro App Flutter, antes eu trabalhava com React Native, '
              'Clique para ver a diferença entre REACT NATIVE E FLUTTER!',
              textAlign: TextAlign.center, // Centraliza o texto horizontalmente
            ),
            const SizedBox(height: 20), // Espaçamento entre o texto e o botão
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SegundaTela(), // Navega para a página de comparação
                  ),
                );

              },
              child: const Text('REACT NATIVE VS FLUTTER'), // Texto do botão
            ),
          ],
        ),
      ),
    );
  }
}
