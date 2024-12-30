import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'zs / ... / projects',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'projects',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // SizedBox(height: 20),
            // ProjectsEntry(image: 'assets/images/moodmatch.png', title: 'MoodMatch', description: 'The first dating platform that focuses on meaningful connections based on mood & personality.'),
            SizedBox(height: 20),
            ProjectsEntry(image: 'assets/images/lifebloom.png', title: 'LifeBloom', description: 'Mobile app that helps women to track their mental health & physical health during and after pregnancy.'),
            SizedBox(height: 20),
            ProjectsEntry(image: 'assets/images/furnishify.png', title: 'Furnishify', description: 'Mobile app that uses AR (Augmented Reality) to help users visualize furniture in their homes.'),
            SizedBox(height: 20),
            ProjectsEntry(image: 'assets/images/improvio.png', title: 'Improvio', description: 'A one of a kind self-improvement platform to help people track their goals by using science-backed methods.'),
            SizedBox(height: 20),
            ProjectsEntry(image: 'assets/images/scholarly.png', title: 'Scholarly', description: 'A platform to help students track their classes, grades, and assignments. It also provides a way for teachers to manage their classes and students.'),
          ],
        ),
      ),
    );
  }
}

class ProjectsEntry extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const ProjectsEntry({super.key, required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(width: 80),
      ],
    );
  }
}

