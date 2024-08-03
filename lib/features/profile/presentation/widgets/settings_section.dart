import 'package:edulink_mobile/features/profile/presentation/widgets/logout_setting_card.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/password_setting_card.dart';
import 'package:edulink_mobile/features/profile/presentation/widgets/profile_setting_card.dart';
import 'package:flutter/cupertino.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Paramètres :",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      ProfileSettingCard(),
      PasswordSettingCard(),
      LogoutSettingCard(),
    ]);
  }
}
