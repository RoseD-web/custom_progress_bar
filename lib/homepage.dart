import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double percentage = 0.6;
  int result = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 100,
              lineWidth: 17,
              percent: percentage,
              progressColor: const Color(0xFF19898F),
              backgroundColor: const Color(0xFF95C3C9),
              center: Text(
                result.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF19898F), // Background color
              ),
              onPressed: () {
                Random random = Random();
                setState(() {
                  percentage = random.nextInt(100) / 100;
                  result = (percentage * 100).toInt();
                });
              },
              child: Text('Animate with Random Value'),
            )
          ],
        ),
      ),
    );
  }
}
