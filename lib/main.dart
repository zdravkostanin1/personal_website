import 'package:flutter/material.dart';
import 'package:personal_website/src/app.dart';
import 'package:personal_website/src/pages/projects_page/view/projects_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  // mobile view
                  return const CardView();
                } else if (constraints.maxWidth < 1200) {
                  // tablet view
                  return const WebView();
                } else {
                  // desktop view
                  return const WebView();
                }
              },
            ),
        '/projects': (context) => const ProjectsPage(),
      },
    ),
  );
}
