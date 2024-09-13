import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/exercice/data/models/exercice_model.dart';
import 'package:edulink_mobile/features/exercice/presentation/widgets/pdf_viewer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ExerciceScreen extends StatefulWidget {
  const ExerciceScreen({super.key, required this.exercice});
  final ExerciceModel exercice;

  @override
  State<ExerciceScreen> createState() => _ExerciceScreenState();
}

class _ExerciceScreenState extends State<ExerciceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5FDFF),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .05,
      ),
      child: SingleChildScrollView(
        // Added SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Header(
              title: "Exercice",
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 110,
                    padding: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: const Color(0x4B46DDB9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/child.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Foulen Ben Foulen",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 110,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: const Color(0x4B8183FE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            "assets/svg/book.svg",
                            colorFilter: const ColorFilter.mode(
                              Color(0xFF595BDA),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          widget.exercice.matiere,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF595BDA),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 110,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: const Color(0x4BFA7193),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            "assets/svg/calendar.svg",
                            colorFilter: const ColorFilter.mode(
                              Color(0xFFFA7193),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          widget.exercice.dateL,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFA7193),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Description : ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.exercice.description,
              style: const TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 12, height: 2),
            ),
            const SizedBox(
              height: 30,
            ),
            widget.exercice.image != "exercice.jpg" &&
                    widget.exercice.pdf != null
                ? const Text(
                    "Ressources :",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 10,
            ),
            widget.exercice.image != "exercice.jpg"
                ? Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://edulinkbackend.edulink.tn/uploads/${widget.exercice.image}",
                          ),
                          fit: BoxFit.cover),
                    ),
                  )
                : const SizedBox(),
            PdfViewerWidget(
              fileName: widget.exercice.pdf,
            ),
          ],
        ),
      ),
    );
  }
}
