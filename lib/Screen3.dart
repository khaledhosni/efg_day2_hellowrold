import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body:Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FirstRow(),
            SecondRow(),
            Image.asset('images/img.png',
            width: 100,
            height: 100,

            )
            
          ],
        )

      ),
    );
  }
}




class FirstRow extends StatelessWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Container(
              margin: EdgeInsets.all(8),
              child: ElevatedButton(onPressed: (){}, child: Text("1",textAlign: TextAlign.start,
              )
              )
          )
            ,flex: 2,),
          Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Button 2")), flex: 2,),
          Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Button too much text 3")),flex: 7,),
        ],


      ),

    );
  }
}


class SecondRow extends StatelessWidget {
  const SecondRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Button 1")),
          ElevatedButton(onPressed: (){}, child: Text("Button 1")),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){}, child: Text("Button 1")),
            ),
          ),
        ],
      ),

    );
  }
}
