import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zdravko Stanin | Home',
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 50),
            const TopNavBar(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 150),
                Center(
                  child: Text(
                    'ZDRAVKO STANIN',
                    style: GoogleFonts.roboto(
                      fontSize: 52,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'SOFTWARE ENGINEER',
                    style: GoogleFonts.abel(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      // color: const Color(0xFFF8F5FC), // Light purple background
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print("About tapped");
            },
            child: const Text(
              'HOME',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 40), // Space between links
          GestureDetector(
            onTap: () {
              print("About tapped");
            },
            child: const Text(
              'ABOUT',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 40), // Space between links
          GestureDetector(
            onTap: () {
              print("Contact tapped");
            },
            child: const Text(
              'CONTACT',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}