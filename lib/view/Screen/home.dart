import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int randomNumber = 0;
  Random random = Random();

  void buttonWork() {
    randomNumber = random.nextInt(3);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottery App'),
      ),
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your lucky number is 1',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      color: randomNumber==1? Colors.green.withOpacity(.2):Colors.red.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            randomNumber==1 ? Icons.done_outline_sharp: Icons.dangerous,
                            color: randomNumber==1?Colors.green:Colors.red,
                            size: 50,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            randomNumber==1 ?
                            'Congratulation!! your number is $randomNumber\n You won the lottery':
                            'Better luck next time. Your number is $randomNumber\n try again letter',
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                  ),
                )
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          buttonWork();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
