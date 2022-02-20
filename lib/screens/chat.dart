import 'package:flutter/material.dart';

import 'package:surf_practice_chat_flutter/data/chat/repository/repository.dart';

/// Chat screen templete. This is your starting point.
class ChatScreen extends StatefulWidget {
  final ChatRepository chatRepository;

  const ChatScreen({
    Key? key,
    required this.chatRepository,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(title: const Text('Тестовый чат')),
        body:
        const TextField(decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Введите ник",
            fillColor: Colors.black12,
            filled: true
        )));

        Builder(
          builder: (BuildContext context) {
            return TextButton(
              child: const Text('BUTTON'),
              onPressed: () {
                Scaffold.of(context).showBottomSheet (
                      (BuildContext context) {
                    return Container(
                      alignment: Alignment.center,
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children:  [
                            const Text('BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },

    );
  }

    // TODO(task): Use ChatRepository to implement the chat.
 //   throw UnimplementedError();
 // }
}
