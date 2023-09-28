import 'package:badaro_ds/badaro_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottonNavigationBarHome extends StatelessWidget {
  const BottonNavigationBarHome({
    super.key,
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(48),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PinkButton(
            onTap: onTap,
            label: 'Início',
            leftIcon: true,
          ),
          SvgPicture.asset('assets/icons/calendar-search.svg'),
          SvgPicture.asset('assets/icons/card-2.svg'),
          SvgPicture.asset('assets/icons/key.svg'),
        ],
      ),
    );
  }
}
