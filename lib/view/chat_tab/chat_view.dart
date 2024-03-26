import 'package:flutter/material.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => ChatViewState();
}

class ChatViewState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Hello"),
    );
  }
}
