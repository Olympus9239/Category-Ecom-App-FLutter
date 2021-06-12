import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("images/undraw_secure_login_pdn4.png",fit: BoxFit.cover,),
        SizedBox(
          height:20.0,
        ),
        Text("Welcome",
        style: TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 25.0,
        ),
        ),
        SizedBox(
          height:10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(
            children:[
              TextField(
            decoration:InputDecoration(
            hintText: "Enter User Name",
            labelText: "User Name",
            )
          ),
          SizedBox(
            height:10.0,
          ),
          TextField(
            obscureText: true,
            decoration:InputDecoration(
            hintText: "Enter Password",
            labelText: "Password",
            
            ),
          ),
            ]
          ),
        ),
        ElevatedButton(onPressed: (){},
        
         child: Text('Login'),
         ),
        ],
        
      ),
    );
  }
}