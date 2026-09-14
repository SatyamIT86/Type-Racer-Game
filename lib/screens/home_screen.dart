import 'package:flutter/material.dart';
import 'package:typeracer_game/widgets/custom_buttom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Create/Join a room to Play",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: size.height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(text: 'Create Room', onTap: () {}, isHome: true),
                CustomButton(text: 'Join Room', onTap: () {}, isHome: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
