import 'package:flutter/material.dart';

void main() => runApp(Screen2());

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 50,bottom: 20),
                  child: FlutterLogo(size:128)
              ),
              Text('EFG APP',style: TextStyle(fontSize: 36,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),

              Container(
                margin: EdgeInsets.all(8),
                child: TextFormField(
                  initialValue: '',

                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    iconColor: Colors.amber,

                    border: OutlineInputBorder(),

                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(8),
                child: TextFormField(
                  initialValue: '',

                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),

                    border: OutlineInputBorder(),

                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(8),
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child:Text('Login',style: TextStyle(fontSize: 18),) )
              ),

              Container(
                margin: EdgeInsets.only(left: 32,right: 32, top: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Register"),
                    Expanded(child: Text("Forget password?",textAlign: TextAlign.end,)
                    ),

                  ],
                ),
              )




            ],
          ),
        )

        ),
      );
  }
}
