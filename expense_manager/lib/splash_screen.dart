import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: const Color.fromRGBO(234, 238, 235, 1),
              radius: 80,
              child: Image.asset("assets/images/logo.png",),
            ),
          ),
          const Spacer(),
          Text("Expense Manager", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
