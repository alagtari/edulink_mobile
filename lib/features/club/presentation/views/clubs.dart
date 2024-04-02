import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/club/presentation/bloc/clubs_bloc.dart';
import 'package:edulink_mobile/features/club/presentation/widgets/club_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Clubs extends StatelessWidget implements AutoRouteWrapper {
  const Clubs({Key? key}) : super(key: key);
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => ClubsBloc()..add(GetClubsEvent()),
        child: this,
      );

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
                title: "Clubs",
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: BlocBuilder<ClubsBloc, ClubState>(builder: (context, state) {
                  if (state is GetClubsSuccess) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.clubs.length,
                      itemBuilder: (context, i) => CubCard(
                        club: state.clubs[i],
                      ),
                    );
                  }
                  return const SizedBox();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
