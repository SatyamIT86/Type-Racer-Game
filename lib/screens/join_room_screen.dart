import 'package:flutter/material.dart';
import 'package:typeracer_game/widgets/custom_buttom.dart';
import 'package:typeracer_game/widgets/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final _nameController = TextEditingController();
  final _gameIdController = TextEditingController();

  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

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
              const Text("Join Room", style: TextStyle(fontSize: 30)),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _nameController,
                hinttext: "Enter your name",
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _gameIdController,
                hinttext: "Enter game ID",
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Join",
                onTap: () {
                  print("Join Room Clicked");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
