import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MoviesNameExpandedWidget extends StatelessWidget {
  const MoviesNameExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final screenWidth = size.width;
    final screenHeight = size.height;
    final screenArea = screenWidth * screenHeight;
    return Container(
      alignment: Alignment.center,
      width: screenWidth * 0.75,
      height: screenHeight * 0.15,
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade300,
          borderRadius: BorderRadius.circular(screenArea),
          boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 10)]),
      child: Row(
        children: <Widget>[
          SizedBox(width: screenWidth * 0.05),
          Text(
            'Movies: ',
            style: TextStyle(fontSize: screenWidth * 0.03, color: Colors.white),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: screenWidth * 0.4,
            child: DefaultTextStyle(
              style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  color: Colors.blueGrey.shade100),
              child: AnimatedTextKit(
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  RotateAnimatedText('Prison Break'),
                  RotateAnimatedText('Time Machine'),
                  RotateAnimatedText('John Wick'),
                  RotateAnimatedText('Good Bad Ugly'),
                  RotateAnimatedText('Captain America'),
                  RotateAnimatedText('Entrapment'),
                  RotateAnimatedText('Breaking Bad'),
                  RotateAnimatedText('Behind Enemy Line'),
                  RotateAnimatedText('Split'),
                  RotateAnimatedText('SISU'),
                  RotateAnimatedText('Pirates'),
                  RotateAnimatedText('Lost'),
                ],
              ),
            ),
          ),
          SizedBox(width: screenWidth * 0.02),
        ],
      ),
    );
  }
}
