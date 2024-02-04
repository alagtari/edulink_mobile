import 'package:edulink_mobile/common_widgets/header/header.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
              BlocBuilder<MealsBloc, MealsState>(
                builder: (context, state) {
                  if (state is GetMealsSuccess) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Day(
                          day: 'lundi',
                          image: 'cantine1.png',
                          color: const Color.fromARGB(153, 70, 221, 185),
                          meals: state.meals?.lundi,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Day(
                          day: 'mardi',
                          image: 'cantine2.png',
                          color: const Color.fromARGB(153, 129, 131, 254),
                          meals: state.meals?.mardi,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Day(
                          day: 'mercredi',
                          image: 'cantine3.png',
                          color: const Color.fromARGB(153, 250, 113, 147),
                          meals: state.meals?.mercredi,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Day(
                          day: 'jeudi',
                          image: 'cantine4.png',
                          color: const Color.fromARGB(153, 70, 221, 185),
                          meals: state.meals?.jeudi,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Day(
                          day: 'vendredi',
                          image: 'cantine5.png',
                          color: const Color.fromARGB(153, 129, 131, 254),
                          meals: state.meals?.vendredi,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Day(
                          day: 'samedi',
                          image: 'cantine6.png',
                          color: const Color.fromARGB(153, 250, 113, 147),
                          meals: state.meals?.samedi,
                        ),
                      ],
                    );
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
