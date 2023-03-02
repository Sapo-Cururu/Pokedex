import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: Text("Charmander #004"),
        backgroundColor: const Color(0xFFE3350D),
      ),
      body: Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [titleText(text: "Altura", context: context), subtitleText(text: '0,6m', context: context)],
                          ),
                          Column(
                            children: [titleText(text: 'Peso', context: context), subtitleText(text: '8.5kg', context: context)],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // 2 Linha

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              titleText(text: "Tipo", context: context),
                              customChip(text: 'Fogo', background: Color(0xFFF17F2E), context: context),
                            ],
                          ),
                          Column(
                            children: [titleText(text: "Habilidade", context: context), subtitleText(text: "Chama", context: context)],
                          ),
                        ],
                      ),
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
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.primary),
    );
  }

  Text subtitleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }

  Chip customChip({
    required String text,
    required Color background,
    required BuildContext context,
  }) {
    return Chip(
      label: Text(text),
      labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Colors.white,
          ),
      backgroundColor: background,
    );
  }
}
