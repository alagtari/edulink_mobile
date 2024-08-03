import 'package:edulink_mobile/features/auth/login/presentation/widgets/my_form_field.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/update_info_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileSettingCard extends StatefulWidget {
  const ProfileSettingCard({super.key});

  @override
  State<ProfileSettingCard> createState() => _ProfileSettingCardState();
}

class _ProfileSettingCardState extends State<ProfileSettingCard> {
  final TextEditingController controller = TextEditingController();

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return UpdateInfoForm(controller: controller);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showBottomSheet(context),
      child: Container(
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
                  "Profile",
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
