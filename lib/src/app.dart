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
                    const SizedBox(width: 10,),
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
