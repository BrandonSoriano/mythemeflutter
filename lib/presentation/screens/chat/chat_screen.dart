import 'package:flutter/material.dart';
import 'package:si_no_app/presentation/widgets/chat/message_burbuja.dart';
import 'package:si_no_app/presentation/widgets/otro_message_burbuja.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://st3.depositphotos.com/7636914/12665/v/950/depositphotos_126655090-stock-illustration-beautiful-tribal-girl-portrait-in.jpg'),
          ),
          ),
          title: const Text('🐝🌻GABY🌻🐝'), 
          centerTitle: false,
          backgroundColor: Colors.amber,
      ),

      body:  _ChatView(),

      
    );
  }
}
class _ChatView extends StatelessWidget{

  

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10
        ), 
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
                return (index % 2 == 0) ? const OtroMyMessageBubble() : MyMessageBubble();
              },
            ),
          ),
        Text('Hola mundo')
        ],
        ) 
      ,)
    );
  }
}

  
