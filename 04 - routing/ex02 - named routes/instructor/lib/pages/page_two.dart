import 'package:flutter/material.dart';

// We'll build our pages as full pages for now (individual Scaffold per page) rather than
// doing an outer skeleton page with inner content just to keep things simple.
class PageTwo extends StatelessWidget {

  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          const Text("Page Two"),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              // routes are a stack: first in, first out (hold back button on some browser tab for an example)
              // if we just want to go back to the previous route, we just pop the most recent route off the top of the stack
              // and we don't need to care about what path it was specifically.

              // tl;dr -> Navigator holds the stack of routing history, push adds to the stack, pop removes from the stack
            },
            child: const Text('Go back to Page One'),
          ),

        ],
      ),
    );
  }

}