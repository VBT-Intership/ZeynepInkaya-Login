import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 250.0, 20.0, 200.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  child: Image.asset('assets/tik2.png'),
                ),
                SizedBox(height: 20.0,),
                SizedBox(
                  child: Text("Sign in successful"),
                )
                //Image.asset('assets/tik2.png'),
                //Text("Sign in successful")

              ],
            ),
          
        
          )
        
        )
        
      ),
      
    );
  }
}