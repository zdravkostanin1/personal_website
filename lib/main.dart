import 'package:flutter/material.dart';
import 'package:personal_website/src/app.dart';
import 'package:personal_website/src/pages/view/projects_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const CardView(),
        '/projects': (context) => const ProjectsPage(),
      },
    ),
  );
}
