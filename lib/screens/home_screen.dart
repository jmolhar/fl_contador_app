import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void reset() {
    contador = 0;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const tamanoLetra = TextStyle(fontSize: 40);
    const srcImagen =
        'https://statics.memondo.com/p/99/mmds/2024/09/MMD_1210327_e0ffb87aa7b947b3b6ae9ffa9668dda8_futbol_vinicius_balon_de_playa.jpg?cb=8784951';
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(title: Text('Contador'), elevation: 10.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Balones de playa de Vinicius',
              style: tamanoLetra,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text('$contador', style: tamanoLetra),
            Image.network(srcImagen),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomizedFloatingActionButton(
        incrementarFn: incrementar,
        resetFn: reset,
        decrementarFn: decrementar,
      ),
    );
  }
}

class CustomizedFloatingActionButton extends StatelessWidget {
  final Function incrementarFn;
  final Function resetFn;
  final Function decrementarFn;

  const CustomizedFloatingActionButton({
    super.key,
    required this.incrementarFn,
    required this.resetFn,
    required this.decrementarFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.remove),
          //child: const Text('Sumar'),
          onPressed: () => decrementarFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => incrementarFn(),
        ),
      ],
    );
  }
}
