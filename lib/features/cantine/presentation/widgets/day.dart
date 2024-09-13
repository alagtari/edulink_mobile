import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/core/util/utils.dart';
import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';
import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  final String day;
  final String image;
  final Color color;
  final List<MealModel> meals;

  const Day({
    super.key,
    required this.day,
    required this.image,
    required this.color,
    required this.meals,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(MealsDay(title: day, meals: meals));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * .11,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage("assets/images/$image"),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Text(
                day.capitalize(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: color,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
