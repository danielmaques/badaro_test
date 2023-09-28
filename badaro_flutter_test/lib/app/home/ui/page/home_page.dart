import 'package:badaro_ds/badaro_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF5,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(color: AppColors.pinkFF),
            const SizedBox(height: 39),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Acesso Rápido',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      QuickAccessMenu(
                        icon: 'assets/icons/card.svg',
                        label: 'Visualizar\nCartões',
                      ),
                      SizedBox(width: 16),
                      QuickAccessMenu(
                        icon: 'assets/icons/money-recive.svg',
                        label: 'Meus\nSaldos',
                      ),
                      SizedBox(width: 16),
                      QuickAccessMenu(
                        icon: 'assets/icons/calendar-tick.svg',
                        label: 'Meus\nEventos',
                      ),
                      SizedBox(width: 16),
                      QuickAccessMenu(
                        icon: 'assets/icons/messages.svg',
                        label: 'Chat de\natendimento',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Chat(
                        onTap: () {
                          Modular.to.pushNamed('/chat/');
                        },
                      ),
                      const SizedBox(height: 48),
                      const News(),
                      const SizedBox(height: 48),
                      Text(
                        'Só para você, Roberta!',
                        style: GoogleFonts.poppins(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ForYou(
                              image: AssetImage('assets/images/image-2.png'),
                            ),
                            SizedBox(width: 16),
                            ForYou(
                              image: AssetImage('assets/images/image-3.png'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: BottonNavigationBarHome(
          onTap: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
