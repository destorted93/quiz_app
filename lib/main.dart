import "package:flutter/material.dart";
import 'package:window_manager/window_manager.dart';

// optimize the main function

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  // await windowManager.ensureInitialized();

  // WindowOptions windowOptions = const WindowOptions(
  //   size: Size(800, 600),
  //   center: true,
  //   backgroundColor: Colors.transparent,
  //   skipTaskbar: false,
  //   titleBarStyle: TitleBarStyle.hidden,
  // );
  // windowManager.waitUntilReadyToShow(windowOptions, () async {
  //   await windowManager.show();
  //   await windowManager.focus();
  // });

  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  // var isFullScreen = false;

  void startQuiz() {
    // if (isFullScreen)
    //   isFullScreen = false;
    // else
    //   isFullScreen = true;

    // windowManager.setFullScreen(isFullScreen);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 125, 21, 143),
                Color.fromARGB(255, 207, 14, 79),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/pictures/quiz-logo.png",
                  width: 300,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Learn Flutter the fun way! :)",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                OutlinedButton(
                  onPressed: startQuiz,
                  child: const Text(
                    "Start Quiz",
                    style: TextStyle(
                      color: Color.fromARGB(255, 64, 0, 75),
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
