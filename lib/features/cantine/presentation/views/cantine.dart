import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';
import 'package:edulink_mobile/features/cantine/presentation/bloc/meals_bloc.dart';
import 'package:edulink_mobile/features/cantine/presentation/widgets/day.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Cantine extends StatefulWidget implements AutoRouteWrapper {
  const Cantine({Key? key}) : super(key: key);
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => MealsBloc()..add(GetMealsEvent()),
        child: this,
      );

  @override
  State<Cantine> createState() => _CantineState();
}

class _CantineState extends State<Cantine> {
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
          const Header(
            title: "cantine",
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            // Use Expanded to provide ListView with appropriate space
            child: BlocBuilder<MealsBloc, MealsState>(
              builder: (context, state) {
                if (state is GetMealsSuccess) {
                  final Map<String, List<MealModel>> groupedMeals = {};
                  final List<String> days = [];

                  for (var meal in state.meals) {
                    String date = meal.date;

                    if (groupedMeals.containsKey(date)) {
                      groupedMeals[date]!.add(meal);
                    } else {
                      groupedMeals[date] = [meal];
                      days.add(date);
                    }
                  }
                  groupedMeals.forEach((date, mealsList) {
                    mealsList.sort((a, b) => a.heur.compareTo(b.heur));
                  });

                  // Output the grouped map

                  return ListView.builder(
                    itemCount: days.length,
                    itemBuilder: (context, index) {
                      final day = days[index];
                      final meals = groupedMeals[day];

                      return Column(
                        children: [
                          Day(
                            day: days[index],
                            image: 'cantine2.png',
                            color: Colors.red,
                            meals: meals!,
                          ),
                          const SizedBox(height: 15),
                        ],
                      );
                    },
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
