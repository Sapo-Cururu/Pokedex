import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: Text("Charmander #004"),
        backgroundColor: const Color(0xFFE3350D),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset("assets/charmander.png"),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Têm preferência por coisas quentes. Quando chove, diz-se que vapor jorra da ponta da cauda.'),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // 1 Linha
                      Row(
                        children: [
                          Column(
                            children: [
                              titleText(text: "Altura", context: context),
                            ],
                          ),
                        ],
                      ),
                      // 2 Linha
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } // Build

  Text titleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(text);
  }
}
