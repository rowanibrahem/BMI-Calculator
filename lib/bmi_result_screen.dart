
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
 
  final int? result;
  final bool isMale;
  final int? age;
  const BMIResultScreen(
      {super.key,
   required this.age,
    required this.isMale,
    required this.result,
 });
  String get resultPhrase {
    String resultText = '';
    if (result! >= 30) {
      resultText = 'Obese';
    } else if (result! > 25 && result! < 30) {
      resultText = 'Overweight';
    } else {
      if (result! >= 18.5 && result! <= 24.9) {
        resultText = 'Normal';
      } else {
        resultText = 'Thin';
      }
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ),
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(
        //       Icons.keyboard_arrow_left,
        //   ),
        // ),
        centerTitle:true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender: ${isMale ? 'Male' : 'Female'}',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Result : $result',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
               Text(
                'Healthiness : $resultPhrase',
                 style: Theme.of(context).textTheme.headlineLarge,
                 textAlign: TextAlign.center,
              ),
              Text(
                'Age : $age',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
