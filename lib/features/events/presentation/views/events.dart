import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/events/presentation/bloc/events_bloc.dart';
import 'package:edulink_mobile/features/events/presentation/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Events extends StatelessWidget implements AutoRouteWrapper {
  const Events({Key? key}) : super(key: key);
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => EventsBloc()..add(GetEventsEvent()),
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
                title: "Events",
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: BlocBuilder<EventsBloc, EventState>(builder: (context, state) {
                  if (state is GetEventsSuccess) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.events.length,
                      itemBuilder: (context, i) => EventCard(
                        event: state.events[i],
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
