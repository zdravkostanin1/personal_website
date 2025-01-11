import 'package:flutter/material.dart';
import 'package:personal_website/src/pages/card_view/view/card_view.dart';
import 'package:personal_website/src/pages/projects_page/view/projects_page.dart';
import 'package:personal_website/src/pages/web_view/view/web_view.dart';
import 'package:personal_website/src/pages/work_page/view/work_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        '/work': (context) => const WorkPage(),
      },
    );
  }
}
