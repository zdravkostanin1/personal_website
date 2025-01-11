import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'zs / ... / work',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'work',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: const [
                      WorkEntry(
                        image: 'assets/images/upwork.jpg',
                        title: 'Software Engineer',
                        description: 'Upwork',
                      ),
                      SizedBox(height: 20),
                      WorkEntry(
                        image: 'assets/images/futurist.png',
                        title: 'Software Engineer',
                        description: 'Futurist Labs',
                      ),
                      SizedBox(height: 20),
                      WorkEntry(
                        image: 'assets/images/improvio.png',
                        title: 'Startup Founder',
                        description: 'Improvio',
                      ),
                      SizedBox(height: 20),
                      WorkEntry(
                        image: 'assets/images/ja_bulgaria.png',
                        title: 'Manager',
                        description: 'JA Bulgaria - Event',
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class WorkEntry extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const WorkEntry({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isSmallScreen ? 16 : 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: isSmallScreen ? 15 : 16,
                ),
              ),
            ],
          ),
        ),
        if (!isSmallScreen) const SizedBox(width: 80),
      ],
    );
  }
}
