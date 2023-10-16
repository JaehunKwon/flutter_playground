import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/outline_text.dart';

class OutlineTextSample extends StatelessWidget {
  const OutlineTextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () => {
            Navigator.of(context).pop(),
          },
        ),
        title: const Text("Outline Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // basic
            OutlineText(
              Text(
                "Hello World!!",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            const SizedBox(height: 10),
            // with options
            SizedBox(
              width: 200,
              child: OutlineText(
                Text(
                  "Hello World!! Hello World",
                  style: Theme.of(context).textTheme.displaySmall,
                  textScaleFactor: 0.9,
                  overflow: TextOverflow.ellipsis,
                ),
                strokeWidth: 2,
                strokeColor: Colors.amber,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
