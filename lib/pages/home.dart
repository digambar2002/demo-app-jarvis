import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 1, 26),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Text(
                  "Hi, Digambar 👋",
                  style: GoogleFonts.shareTech(
                    textStyle: const TextStyle(
                        color: Colors.cyan, letterSpacing: .5, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "How Can I Help You",
                  style: GoogleFonts.rajdhani(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/gif/jarvis.gif", // Path to your GIF asset
                  width: 300, // Adjust size as needed
                  height: 300, // Adjust size as needed
                  fit: BoxFit.cover, // Adjust image fit as needed
                ),
                const SizedBox(
                  height: 20,
                ),
                TextAnimatorSequence(
                  loop: true,
                  children: [
                    TextAnimator(
                      "J . A . R . V . I . S ",
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      atRestEffect: WidgetRestingEffects.pulse(),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
