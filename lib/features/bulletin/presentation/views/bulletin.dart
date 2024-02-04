import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/bulletin/data/models/note_model.dart';
import 'package:edulink_mobile/features/bulletin/presentation/bloc/notes_bloc.dart';
import 'package:edulink_mobile/features/bulletin/presentation/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Bulletin extends StatefulWidget implements AutoRouteWrapper {
  const Bulletin({Key? key}) : super(key: key);

  @override
  State<Bulletin> createState() => _BulletinState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => NotesBloc()..add(GetNotesEvent()),
        child: this,
      );
}

class _BulletinState extends State<Bulletin> {
  double calculeMoyenne(List<NoteModel> notes) {
    if (notes.isEmpty) {
      return 0.0;
    }
    double sum = 0.0;
    for (var note in notes) {
      sum += note.note;
    }
    return sum / notes.length;
  }

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
              title: "Bulletin",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(80, 71, 190, 204),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: const Row(children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Matière',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'control',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'examen',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'moyenne',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: BlocBuilder<NotesBloc, NoteState>(
                builder: (context, state) {
                  if (state is GetNotesSuccess) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.notes.length,
                      itemBuilder: (context, index) {
                        return NoteCard(note: state.notes[index]);
                      },
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Text(
                  //       "Nombre total d'absence : ",
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.w700,
                  //         fontSize: 15,
                  //       ),
                  //     ),
                  //     Text(
                  //       '3 fois',
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 15,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 2,
                  // ),
                  Row(
                    children: [
                      const Text(
                        "Moyenne : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      BlocBuilder<NotesBloc, NoteState>(
                        builder: (context, state) {
                          if (state is GetNotesSuccess) {
                            double moyenne = calculeMoyenne(state.notes);
                            return Text(
                              "$moyenne",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            );
                          }
                          return const SizedBox();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      )),
    );
  }
}
