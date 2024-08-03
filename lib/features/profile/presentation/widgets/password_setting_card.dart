import 'package:edulink_mobile/features/profile/presentation/widgets/change_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordSettingCard extends StatefulWidget {
  const PasswordSettingCard({
    super.key,
  });

  @override
  State<PasswordSettingCard> createState() => _PasswordSettingCardState();
}

class _PasswordSettingCardState extends State<PasswordSettingCard> {
  final TextEditingController controller = TextEditingController();

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ChangePasswordForm(controller: controller);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showBottomSheet(context),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .02),
              spreadRadius: 1,
              blurRadius: 26.5,
              offset: Offset(3, 3),
            ),
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .02),
              spreadRadius: 1,
              blurRadius: 26.5,
              offset: Offset(-3, -3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 46,
              width: 46,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0x2000AEDB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                "assets/svg/user.svg",
                colorFilter: const ColorFilter.mode(
                  Color(0xFF00AEDB),
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mot de passe",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF00AEDB),
            ),
          ],
        ),
      ),
    );
  }
}
