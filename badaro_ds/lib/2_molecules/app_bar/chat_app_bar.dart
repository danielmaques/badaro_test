import 'package:badaro_ds/badaro_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    super.key,
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: const BoxDecoration(
              color: AppColors.pinkFF,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: SvgPicture.asset(
                      'assets/icons/arrow-left.svg',
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/icons/message-question.svg',
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 105,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/refresh.svg'),
                const SizedBox(width: 4),
                Text(
                  'Reiniciar',
                  style: GoogleFonts.poppins(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  'Mais sobre',
                  style: GoogleFonts.poppins(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.add,
                  color: AppColors.pinkFF,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 175,
          child: Image.asset('assets/images/bada-icon.png'),
        ),
      ],
    );
  }
}
