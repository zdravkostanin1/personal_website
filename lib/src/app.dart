import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/src/pages/view/projects_page.dart';
import 'package:url_launcher/url_launcher.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
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
      ),
    );
  }
}

class TestWidget2 extends StatefulWidget {
  const TestWidget2({super.key});

  @override
  State<TestWidget2> createState() => _TestWidget2State();
}

class _TestWidget2State extends State<TestWidget2> {
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

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Hello World!'),
            ),
          ),
        ),
      ),
    );
  }
}

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/profile-pic.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
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
                const SizedBox(height: 10),
                const PointerArrow(
                  width: 10.0,
                  height: 80.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    'EXPERIENCE',
                    style: GoogleFonts.b612Mono(
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

class PointerArrow extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const PointerArrow({
    super.key,
    this.width = 20.0,
    this.height = 10.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _ArrowPainter(color: color),
    );
  }
}

class _ArrowPainter extends CustomPainter {
  final Color color;

  _ArrowPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width / 2, size.height); // Bottom center
    path.lineTo(size.width, 0); // Top right
    path.lineTo(0, 0); // Top left
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
