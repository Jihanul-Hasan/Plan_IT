import 'package:flutter/material.dart';
import 'Task_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    double size = screenHeight* 0.6;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: size,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to',
                            style: TextStyle(fontSize: 10), // Small font size
                          ),
                          SizedBox(height: 8), // Space between the two lines
                          Text(
                            'Plan IT',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold), // Bold font size
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: 200,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Your Personal task management \n and planning solution',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center, // Small font size
                          ),
                          ElevatedButton(
                              onPressed: () {
                                // Action to perform when the button is pressed.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const All_Tasks()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 20),
                                  backgroundColor:
                                      const Color.fromARGB(232, 28, 28, 29),
                                  textStyle: const TextStyle(
                                    fontSize: 10, // Text font size
                                    color: Colors.white, // Text color
                                    fontWeight:
                                        FontWeight.normal, // Text font weight
                                  )
                                  // Change the button color here
                                  ),
                              child: const Text('Let\'s Get Started'))
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
