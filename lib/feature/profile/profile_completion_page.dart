import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:agri_bridge/app/app_colors.dart';

class ProfileCompletion extends StatelessWidget {
  final String title;
  // final IconData icon;
  final Function? onClick;
  final String status;

  const ProfileCompletion({
    super.key,
    required this.title,
    // required this.icon,
    required this.status,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick?.call();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: Row(
          children: [
            Icon(
              status == "Done"
                  ? FontAwesomeIcons.circleCheck
                  : FontAwesomeIcons.circleXmark,
              color: status == "Done"
                  ? AppColors.primaryColor
                  : AppColors.secondaryColor,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: AppColors.primaryDarkColor, fontSize: 14),
              textAlign: TextAlign.right,
            ),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.circleArrowRight,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
