import 'package:flutter/material.dart';
import 'package:typeracer_game/widgets/custom_buttom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
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
                  CustomButton(
                    text: 'Create Room',
                    onTap: () => Navigator.pushNamed(context, '/create-room'),
                    isHome: true,
                  ),
                  CustomButton(
                    text: 'Join Room',
                    onTap: () {
                      print('JOIN ROOM CLICKED');
                      Navigator.pushNamed(context, '/join-room');
                    },
                    isHome: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
