import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(width: 40, height: 30, color: Colors.grey[300]),
                      const SizedBox(width: 10),
                      Expanded(
                          child:
                              Container(height: 30, color: Colors.grey[200])),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(height: 50, color: Colors.green[200]),
                            const SizedBox(height: 8),
                            Container(height: 50, color: Colors.green[200]),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                    height: 108, color: Colors.orange[200])),
                            const SizedBox(width: 8),
                            Expanded(
                                child: Container(
                                    height: 108, color: Colors.orange[200])),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 100, color: Colors.purple[100])),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          children: [
                            Container(height: 46, color: Colors.purple[200]),
                            const SizedBox(height: 8),
                            Container(height: 46, color: Colors.purple[200]),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                          child: Container(
                              height: 100, color: Colors.purple[100])),
                      const SizedBox(width: 8),
                      Expanded(
                          child:
                              Container(height: 100, color: Colors.purple[50])),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child:
                              Container(height: 80, color: Colors.teal[100])),
                      const SizedBox(width: 12),
                      Expanded(
                          flex: 3,
                          child:
                              Container(height: 80, color: Colors.teal[300])),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(height: 50, color: Colors.grey[300]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
