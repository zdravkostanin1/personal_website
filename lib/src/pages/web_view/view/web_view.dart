import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/src/models/scale_size.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
              ),
              Text(
                'Software Engineer & CS Student',
                style: GoogleFonts.libreBaskerville(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
              ),
              const SizedBox(height: 10),
              Text(
                'Software Engineer, Entrepreneur. Prev. Software Engineer @ Futurist Labs.',
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
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
