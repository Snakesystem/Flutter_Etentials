import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Aplikasi Pertama",
            style: TextStyle(
              fontFamily: 'New Amsterdam',
            ),
          ),
          Text(
            "Saya",
            style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
          )
        ]),
      ),
      body: const Center(
        child: SizedBox(
            width: 250,
            child: Text(
              "Hello World gaes aplikasi ini hanya untuk belajar!",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  backgroundColor: Colors.amber,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black,
                      offset: Offset(5, 5),
                    )
                  ],
                  letterSpacing: 2,
                  wordSpacing: 5,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.wavy),
            )),
      ),
    );
  }
}
