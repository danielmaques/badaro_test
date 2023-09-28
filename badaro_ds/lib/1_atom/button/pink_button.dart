import 'package:badaro_ds/0_core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PinkButton extends StatelessWidget {
  const PinkButton({
    super.key,
    required this.onTap,
    required this.label,
    this.rightIcon = false,
    this.leftIcon = false,
  });

  final Function() onTap;
  final bool rightIcon;
  final bool leftIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.pinkFF,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Visibility(
              visible: leftIcon,
              child: SvgPicture.asset('assets/icons/house.svg'),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.poppins(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            Visibility(
              visible: rightIcon,
              child: SvgPicture.asset('assets/icons/messages-2.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
