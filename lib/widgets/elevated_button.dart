import 'package:flutter/material.dart';

class MovieElevatedButton extends StatelessWidget {
  const MovieElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Modal Bottom Sheet'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 400,
                child: Center(
                  child: ElevatedButton(
                    child: const Text('Close'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ), // ElevatedButton
                ), // Center
              ); // SizedBox
            },
          );
        },
      ),
    );
  }
}
