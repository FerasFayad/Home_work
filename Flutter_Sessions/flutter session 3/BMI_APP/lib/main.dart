// import 'package:flutter/material.dart';

// import 'homepage.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 174;
  int weight = 60;
  int age = 29;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // القسم العلوي: اختيار الجنس
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(icon: Icons.male, label: 'MALE')),
                Expanded(
                    child: ReusableCard(icon: Icons.female, label: 'FEMALE')),
              ],
            ),
          ),
          // القسم الأوسط: الطول
          Expanded(
            child: ReusableCardContent(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: TextStyle(color: Colors.grey)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$height',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900)),
                      Text('cm', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // القسم السفلي: الوزن والعمر
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardContent(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: TextStyle(color: Colors.grey)),
                        Text('$weight',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: Icons.remove,
                                onPressed: () => setState(() => weight--)),
                            SizedBox(width: 10),
                            RoundIconButton(
                                icon: Icons.add,
                                onPressed: () => setState(() => weight++)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardContent(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: TextStyle(color: Colors.grey)),
                        Text('$age',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: Icons.remove,
                                onPressed: () => setState(() => age--)),
                            SizedBox(width: 10),
                            RoundIconButton(
                                icon: Icons.add,
                                onPressed: () => setState(() => age++)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // زر الحساب السفلي
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// مكون مخصص للبطاقات
class ReusableCardContent extends StatelessWidget {
  final Widget child;
  ReusableCardContent({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}

// مكون مخصص لاختيار الجنس
class ReusableCard extends StatelessWidget {
  final IconData icon;
  final String label;
  ReusableCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ReusableCardContent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80),
          SizedBox(height: 15),
          Text(label, style: TextStyle(fontSize: 18, color: Colors.grey)),
        ],
      ),
    );
  }
}

// زر دائري مخصص لـ + و -
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
