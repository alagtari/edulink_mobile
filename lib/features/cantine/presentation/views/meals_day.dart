import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';
import 'package:edulink_mobile/features/cantine/presentation/widgets/meal_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MealsDay extends StatelessWidget {
  final String title;
  final List<MealModel> meals;
  const MealsDay({Key? key, required this.title, required this.meals})
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
              child: ListView.builder(
            shrinkWrap: true,
            itemCount: meals.length,
            itemBuilder: (context, i) => MealCard(meal: meals[i]),
          )),
        ],
      ),
    );
  }
}
