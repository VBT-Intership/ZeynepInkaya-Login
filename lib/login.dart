import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 230.0,
                  
                ),
                SizedBox(height: 100.0),
                createEmailorPasswordField(style, textFieldEP.email),
                SizedBox(height: 20.0),
                createEmailorPasswordField(style, textFieldEP.password),
                SizedBox(
                  height: 35.0,
                ),
                createLoginButton(style,context),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
        )
    );
  }
}
enum textFieldEP{
  email ,
  password
}

TextField createEmailorPasswordField(TextStyle tStyle, textFieldEP1){
  return TextField(
    obscureText: true,
    style: tStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0,20.0 , 15.0),
      hintText: textFieldEP1 == textFieldEP.email ? "E-mail" : "Password",
      border: 
        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))

    )

  );
}

Material createLoginButton(TextStyle tStyle,BuildContext context){
  return Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(20.0),
    color : Color(0xff01A0C7),
    child : MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {},
      child: Text("Login",
      textAlign: TextAlign.center,
      style: tStyle.copyWith(color:Colors.white,fontWeight : FontWeight.bold))
    )
  );
}