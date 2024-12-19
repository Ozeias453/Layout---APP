import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Programa Layout'), 
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true, 
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20), 
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 187, 255, 0), 
              borderRadius: BorderRadius.only(408), 
            ),
            padding: const EdgeInsets.all(16.0), 
            child: const Text(
              'Layout Superior:',
              style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const SizedBox(height: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded( 
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 15, 15), 
                    borderRadius: BorderRadius.circular(12), 
                  ),
                  padding: const EdgeInsets.all(16.0), 
                  child: const Text(
                    'Primeira Coluna:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, color: Colors.white), 
                  ),
                ),
              ),
              const SizedBox(width: 10), 
              Expanded( 
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 78, 6), 
                    borderRadius: BorderRadius.horizontal(18), 
                  ),
                  padding: const EdgeInsets.all(16.0), 
                  child: const Text(
                    'Segunda Coluna:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.white), 
                  ),
                ),
              ),
              const SizedBox(width: 18), 
              Expanded( 
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 225, 4, 1)5, 130, 255, 1), 
                    borderRadius: BorderRadius.circular(27), 
                  ),
                  padding: const EdgeInsets.all(16.0), 
                  child: const Text(
                    'Terceira Coluna:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink, 
              borderRadius: BorderRadius.circular(12), 
            ),
            padding: const EdgeInsets.all(16.0), 
            child: const Text(
              'Layout Inferior:',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
