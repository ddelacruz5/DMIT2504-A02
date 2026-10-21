import 'package:flutter/material.dart';

import 'page_two.dart';
// imagine if this page routed to 99 other things -> 99 other imports
// this is bad design! it's called tight coupling.
// look at the first two images here: https://serverlessland.com/event-driven-architecture/tight-coupling-vs-loose-coupling
// and imagine how much duplicated and unmaintainable code would exist with MORE components.
// A would need built-in logic to talk to B, C, D, etc.; B would need specific logic for A, C, D, etc.
// -> saner approach: "loose coupling", i.e. A just emits an event, a logic layer picks that up, and connects it to e.g. B
//                    that way, A and B never need to know about each other, behave generically, etc.


class PageOne extends StatelessWidget {

  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          const Text("Page One"),

          ElevatedButton(
            onPressed: () {
              /*
                 going back is simple (.pop() and ur done);
                 going somewhere specifically is a bit more complicated:
                    {router}.push({someBoilerPlate} -> return PageToGoTo()
              */
              Navigator.of(context).push(
                // I'm spacing this out for clarity, but you can compress it
                MaterialPageRoute(
                  builder:(context) => const PageTwo(),  // () {} to return callback logic, () => to return a value
                )
              );
            },
            child: const Text('Go to Page Two'),
          ),

        ],
      ),
    );
  }

}