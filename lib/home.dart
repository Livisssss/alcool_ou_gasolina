// ignore_for_file: prefer_const_constructors

import "package:alcool_ou_gasolina/resultado.dart";
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _gController = TextEditingController();

  void _calcular() {
    final double? precoA = double.tryParse(_aController.text);
    final double? precoG = double.tryParse(_gController.text);

    if (precoA != null && precoG != null) {
      final double precoGMaximo = precoG * 0.7;
      final String resultado;

      if (precoA < precoGMaximo) {
        resultado = 'Álcool é mais vantajoso!!';
      } else {
        resultado = 'Gasolina é mais vantajosa!!';
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Resultado(
            resultado: resultado,
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Erro'),
          content: Text('Por favor, insira valores.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Álcool ou Gasolina?",
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset('images/logo.png'),
                SizedBox(height: 50),
                Text(
                  "Saiba qual a melhor opção para abastecer seu carro com base nos preços dos combustíveis!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60),
                TextField(
                  controller: _aController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Preço Álcool, ex: 1.59',
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _gController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Preço Gasolina, ex: 3.59',
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: _calcular,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 30),
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    minimumSize: Size(380, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text('CALCULAR'),
                ),
              ],
            )),
      ),
    );
  }
}
