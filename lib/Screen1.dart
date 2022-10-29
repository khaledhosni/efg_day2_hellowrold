import 'package:flutter/material.dart';

void main() => runApp(Screen1());

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EFG APP'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Welcometo EFG APP',style: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.italic
          ),
          ),
        ),

        floatingActionButton: FloatingActionButton(onPressed: _onFABPressed,
        child: Center(child: Text('Click Here',textAlign: TextAlign.center,)),
          elevation: 10,

        ),
      ),
    );
  }

  void _onFABPressed() {
    print('FAB is pressed');
  }
}
