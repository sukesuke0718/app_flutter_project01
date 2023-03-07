import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('First page'),),
      body: Center(
        child: ElevatedButton(
          child: const Text('Next Page'),
          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return const SecondPage();
            }),
            );
          }
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page'),),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go Back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}