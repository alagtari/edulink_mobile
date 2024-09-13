import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/cantine/data/models/day_meals_Model.dart';
import 'package:edulink_mobile/features/cantine/presentation/widgets/meal_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MealsPage extends StatelessWidget {
  final String title;
  final DayMealsModel? meals;
  const MealsPage({Key? key, required this.title, this.meals})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Header(
            title: title,
          ),
          Expanded(
              child: meals != null
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: meals!.meals.length,
                      itemBuilder: (context, i) =>
                          MealCard(meal: meals!.meals[i]),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 280,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              opacity: .6,
                              image: AssetImage(
                                'assets/images/mealnotfound.png',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Aucun Repas",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 75, 75, 75),
                          ),
                        )
                      ],
                    )),
        ],
      ),
    );
  }
}
