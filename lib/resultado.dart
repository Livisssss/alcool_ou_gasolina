// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Resultado extends StatefulWidget {
  final String resultado;
  const Resultado({super.key, required this.resultado});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Resultado",
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              SizedBox(height: 80),
              Text(
                widget.resultado,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: widget.resultado.contains('Álcool')
                      ? Color.fromARGB(255, 81, 243, 229)
                      : Color.fromARGB(255, 219, 70, 70),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
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
                child: Text('VOLTAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
