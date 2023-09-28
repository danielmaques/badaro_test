import 'package:badaro_ds/badaro_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          ChatAppBar(
            onTap: () {
              Modular.to.pop();
            },
          ),
          const Spacer(),
          const Divider(),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFormField(
              cursorColor: AppColors.pinkFF,
              decoration: InputDecoration(
                hintText: 'Fale seus sintomas ou necessidades',
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: SvgPicture.asset(
                    'assets/icons/send.svg',
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: AppColors.whiteF5,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Image.asset('assets/images/by.png'),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
