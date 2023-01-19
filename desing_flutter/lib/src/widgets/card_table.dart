import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.adb_outlined,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.purple,
              icon: Icons.add_reaction_rounded,
              text: 'Reacción',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.calendar_month,
              text: 'Calendario',
            ),
            _SingleCard(
              color: Colors.orange,
              icon: Icons.shield_outlined,
              text: 'Seguridad',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.adb_outlined,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.purple,
              icon: Icons.add_reaction_rounded,
              text: 'Reacción',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.calendar_month,
              text: 'Calendario',
            ),
            _SingleCard(
              color: Colors.orange,
              icon: Icons.shield_outlined,
              text: 'Seguridad',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.adb_outlined,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.purple,
              icon: Icons.add_reaction_rounded,
              text: 'Reacción',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.calendar_month,
              text: 'Calendario',
            ),
            _SingleCard(
              color: Colors.orange,
              icon: Icons.shield_outlined,
              text: 'Seguridad',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class _SingleCardBackground extends StatelessWidget {
  final Widget child;
  const _SingleCardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
