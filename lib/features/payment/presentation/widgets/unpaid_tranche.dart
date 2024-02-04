import 'package:edulink_mobile/features/payment/data/models/tranche_model.dart';
import 'package:flutter/material.dart';

class UnpaidTranche extends StatelessWidget {
  final TrancheModel tranche;
  const UnpaidTranche({
    super.key,
    required this.tranche,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 30,
          right: 30,
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Color.fromARGB(200, 255, 85, 82),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: const Center(
              child: Text(
                '!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ), //CircularAvatar
        ), //
        Container(
          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(20, 255, 85, 82),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 255, 85, 82),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Text(
                  tranche.nomTranche,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "${tranche.montantTranche} TND",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -1.5),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    ' / par tranche',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
