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

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  bool _areProjectsHovered = false;
  bool _isWorkHovered = false;

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 230.0,
            width: 210.0,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/me.jpg'),
                // fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zdravko Stanin',
                style: GoogleFonts.libreBaskerville(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Software Engineer & CS Student',
                style: GoogleFonts.libreBaskerville(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Software Engineer, Entrepreneur. Prev. Software Engineer @ Futurist Labs.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 65),
              Row(
                children: [
                  MouseRegion(
                    onEnter: (_) => setState(() => _isWorkHovered = true),
                    onExit: (_) => setState(() => _isWorkHovered = false),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 40,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: _isWorkHovered ? 1.0 : 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'work',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  MouseRegion(
                    onEnter: (_) => setState(() => _areProjectsHovered = true),
                    onExit: (_) => setState(() => _areProjectsHovered = false),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 40,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: _areProjectsHovered ? 1.0 : 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/projects'),
                          child: const Text(
                            'projects',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 375),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => _openUrl(
                            'https://www.linkedin.com/in/zdravko-stanin/'),
                        child: Image.asset(
                          width: 20,
                          height: 20,
                          'assets/images/linkedin-logo.png',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () =>
                            _openUrl('https://github.com/zdravkostanin1'),
                        child: Image.asset(
                          width: 20,
                          height: 20,
                          'assets/images/github.png',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () => _openUrl('https://x.com/StaninZdravko'),
                        child: Image.asset(
                          width: 20,
                          height: 20,
                          'assets/images/x_logo.png',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () =>
                            _openUrl('mailto:zdravko.stanin@gmail.com'),
                        child: Image.asset(
                          width: 20,
                          height: 20,
                          'assets/images/email.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}
