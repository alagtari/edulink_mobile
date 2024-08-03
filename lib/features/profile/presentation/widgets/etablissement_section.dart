import 'package:flutter/cupertino.dart';

class EtablissementSection extends StatelessWidget {
  const EtablissementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Etablissement :",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ]);
  }
}
