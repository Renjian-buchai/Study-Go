import 'package:flutter/material.dart';

enum Status {
  stopped,
  running,
}

class DesktopStartButton extends StatefulWidget {
  const DesktopStartButton({
    super.key,
  });

  @override
  State<DesktopStartButton> createState() => _DesktopStartButtonState();
}

class _DesktopStartButtonState extends State<DesktopStartButton> {
  Status current = Status.stopped;
  static const double reductionRatio = 2.5;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      shape: const CircleBorder(),
      onPressed: () {
        switch (current) {
          case Status.stopped:
            // Start timer
            setState(() {
              current = Status.running;
            });
            break;
          case Status.running:
            // Stop timer
            setState(() {
              current = Status.stopped;
            });
            break;
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) => Icon(
          switch (current) {
            Status.stopped => Icons.arrow_right_rounded,
            Status.running => Icons.square_rounded
          },
          size: switch (current) {
            Status.stopped => constraints.maxWidth,
            Status.running => constraints.maxWidth / reductionRatio,
          },
        ),
      ),
    );
  }
}