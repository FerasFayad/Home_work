import 'package:flutter/material.dart';

class CardCounter extends StatelessWidget {
  final String cardName;
  final String cardValue;

  const CardCounter({
    super.key,
    required this.cardName,
    required this.cardValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: const Color(0xFf1D1E33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(8)),
            Text(
              cardName,
              style: const TextStyle(fontSize: 22, color: Colors.grey),
            ),
            Text(
              cardValue,
              style: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.grey,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 12,
                  ),
                  FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.grey,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
