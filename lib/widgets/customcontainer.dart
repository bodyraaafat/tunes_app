import 'package:flutter/material.dart';
import 'package:tunes_app/models/tunemodel.dart';

class CustomItems extends StatelessWidget {
  const CustomItems({
    super.key,
    required this.tune,
  });
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playsound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
