import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  void _openUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/images/me.jpg',
                  width: 370,
                  height: 480,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: GestureDetector(
                // TODO: Implement
                onTap: () {},
                child: PopupMenuButton(
                  onSelected: (value) {
                    switch (value) {
                      case 'home':
                        Navigator.pushNamed(context, '/');
                        break;
                      case 'projects':
                        Navigator.pushNamed(context, '/projects');
                        break;
                      case 'work':
                        // TODO: Implement pushNamed to work page
                        break;
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'home',
                      child: Text('home'),
                    ),
                    const PopupMenuItem(
                      value: 'projects',
                      child: Text('projects'),
                    ),
                    const PopupMenuItem(
                      value: 'work',
                      child: Text('work'),
                    ),
                  ],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.grid_view_rounded,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 300,
              child: GestureDetector(
                onTap: () => _openUrl('https://github.com/zdravkostanin1'),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/github.png',
                        color: Colors.white,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 302,
              child: GestureDetector(
                // TODO: Implement
                onTap: () =>
                    _openUrl('https://www.linkedin.com/in/zdravko-stanin/'),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 27,
                    height: 27,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/linkedin-logo.png',
                        color: Colors.white,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 302,
              child: GestureDetector(
                onTap: () => _openUrl('https://x.com/StaninZdravko'),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 27,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/x_logo.png',
                        color: Colors.white,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 105,
              left: 302,
              child: GestureDetector(
                // TODO: Implement
                onTap: () => _openUrl('mailto:zdravko.stanin@gmail.com'),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 27,
                    height: 27,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/email.png',
                        color: Colors.white,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 25,
              // right: 100,
              child: Text(
                'Zdravko Stanin',
                style: GoogleFonts.libreBaskerville(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 25,
              child: Text(
                'Software Engineer & CS Student',
                style: GoogleFonts.libreBaskerville(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
