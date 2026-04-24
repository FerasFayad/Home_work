import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FancyStatsPage(),
    );
  }
}

class FancyStatsPage extends StatelessWidget {
  const FancyStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                decoration: const BoxDecoration(
                  color: Color(0xFFC4E2F7),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildA_B_C_Row(),
                    const SizedBox(height: 25),
                    buildFancySection(),
                    const SizedBox(height: 25),
                    buildInfoCardsSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildA_B_C_Row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildColoredBox('A', const Color(0xFFE55153), Colors.white),
        const SizedBox(width: 20),
        buildColoredBox('B', const Color(0xFFFAB13E), Colors.white),
        const SizedBox(width: 20),
        buildColoredBox('C', const Color(0xFFFADD44), Colors.white),
      ],
    );
  }

  Widget buildColoredBox(String text, Color bgColor, Color textColor) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }

  Widget buildFancySection() {
    return Column(
      children: [
        const SizedBox(height: 15),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFD4DAEE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Text(
                "Fancy Section",
                style: TextStyle(
                  color: Color(0xFF4255A9),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNumberBox('1', const Color(0xFF7A4FBA)),
                  const SizedBox(width: 15),
                  buildNumberBox('2', const Color(0xFFB134AF)),
                  const SizedBox(width: 15),
                  buildNumberBox('3', const Color(0xFF9871C8)),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNumberBox('4', const Color(0xFFB65FBC)),
                  const SizedBox(width: 15),
                  buildNumberBox('5', const Color(0xFFB8AAD7)),
                  const SizedBox(width: 15),
                  buildNumberBox('6', const Color(0xFFD599DB)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNumberBox(String text, Color bgColor) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }

  Widget buildInfoCardsSection() {
    return Column(
      children: [
        const Text(
          "Info Cards",
          style: TextStyle(
            color: Color(0xFF4255A9),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildInfoCard('23', 'Active', const Color(0xFF19907E)),
            const SizedBox(width: 15),
            buildInfoCard('15', 'Pending', const Color(0xFFECB834)),
            const SizedBox(width: 15),
            buildInfoCard('7', 'Completed', const Color(0xFF32A044)),
          ],
        ),
      ],
    );
  }

  Widget buildInfoCard(String count, String label, Color countColor) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: TextStyle(
                color: countColor, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: countColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
