import 'package:flutter/material.dart';
import 'package:lab2/block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Menu selected')),
                  );
                },
                icon: const Icon(Icons.menu),
              ),
              backgroundColor: Colors.blue,
              title: const Text("Profile"),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/pic1.png',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Leo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(88.888),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.school, size: 17, color: Colors.yellow),
                          SizedBox(width: 4),
                          Text("Student"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          Block(
                            imagePath: 'assets/Servant_of_the_Lake.png',
                            color: Colors.green,
                            number: 80,
                            title: "Servant of the Lake",
                          ),
                          Block(
                            imagePath: 'assets/pic1.png',
                            color: Colors.blue,
                            number: 90,
                            title: "Picture one",
                          ),
                          Block(
                            imagePath: 'assets/Servant_of_the_Lake.png',
                            color: Colors.orange,
                            number: 75,
                            title: "Lake image",
                          ),
                          Block(
                            imagePath: 'assets/pic1.png',
                            color: Colors.purple,
                            number: 60,
                            title: "Profile image",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
