import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Examples",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => {
                Navigator.pushNamed(context, '/outlinetext')
              },
              child: Text(
                "Outline text",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
