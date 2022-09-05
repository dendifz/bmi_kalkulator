import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_provider/height_provider.dart';
import 'package:multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Weight (kg)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            /*Consumer<WeightProvider>(
              builder: (context, weightProvider, _) => Slider(
                min: 1,
                max: 100,
                divisions: 100,
                label: weightProvider.weight.round().toString(),
                value: weightProvider.weight,
                activeColor: Colors.blue,
                inactiveColor: Colors.blue.withOpacity(0.2),
                onChanged: (newValue) {
                  newValue = newValue.roundToDouble();
                  weightProvider.weight = newValue;
                },
              ),
            ),*/
            Slider(
              min: 1,
              max: 100,
              divisions: 100,
              label: weightProvider.weight.round().toString(),
              value: weightProvider.weight,
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                weightProvider.weight = newValue;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your Height (cm)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            /*Consumer<HeightProvider>(
              builder: (context, heightProvider, _) => Slider(
                min: 1,
                max: 200,
                divisions: 200,
                label: heightProvider.height.round().toString(),
                value: heightProvider.height,
                activeColor: Colors.pink,
                inactiveColor: Colors.pink.withOpacity(0.2),
                onChanged: (newValue) {
                  newValue = newValue.roundToDouble();
                  heightProvider.height = newValue;
                },
              ),
            ),*/
            Slider(
              min: 1,
              max: 200,
              divisions: 200,
              label: heightProvider.height.round().toString(),
              value: heightProvider.height,
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                heightProvider.height = newValue;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            /*Consumer<WeightProvider>(
              builder: (context, weightProvider, _) => Consumer<HeightProvider>(
                builder: (context, heightProvider, _) => Text(
                  'Your BMI: \n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),*/
            Text(
              'Your BMI: \n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
