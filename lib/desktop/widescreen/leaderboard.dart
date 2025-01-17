import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 716),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Container(
            width: 700,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffeeeeee),
                width: 1,
              ),
            ),
            margin: const EdgeInsets.fromLTRB(10, 8, 8, 8),
            child: SizedBox(
              child: Column(
                children: <Widget>[
                  const Text(
                    "\nLeaderboard",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      alignment: Alignment.topLeft,
                      child: LeaderboardItem(index: index),
                    ),
                    itemCount: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LeaderboardItem extends StatelessWidget {
  const LeaderboardItem({super.key, this.index = -1});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: switch (index) {
        0 => const Color(0xfffce269),
        1 => const Color(0xffc1c8d1),
        2 => const Color(0xffe69b4b),
        _ => const Color(0xfff7f2f9),
      },
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            width: 500,
            child: Text(
              "${index + 1}: Gay!",
              // TODO implement name of leaderboard users
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            width: 100,
            child: const Text(
              // TODO implement score leaderboard
              "aoeuaoeu", // Score
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
