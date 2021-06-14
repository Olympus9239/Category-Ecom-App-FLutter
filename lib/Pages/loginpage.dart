import 'package:category_app/Utilis/utilities.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    String name = "";
    bool changeButton =false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
              child: Column(
          children: [
            Image.asset("images/undraw_secure_login_pdn4.png",fit: BoxFit.cover,height: 250,),
          SizedBox(
            height:20.0,
          ),
          Text("Welcome $name",
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
              ),
              onChanged:(value){
                setState(() {
                  name=value;
                });
              },
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
              ],
            ),
          ),
          SizedBox(
             height: 20.0,
          ),
          // We use InkWell or GestureDetector to use onpressed option with a container.
          InkWell(
            onTap: ()async{
              setState(() {
                changeButton=true;
              });
              await Future.delayed(Duration(seconds: 1)); //  Remember this await fn for delay. we can use this later. animation nhi use karne par hamlog Navigator direct use kar rahe thein
              
               Navigator.pushNamed(context, MyRoute.homeRoute);
            },
                      child: AnimatedContainer(
                        duration: Duration( seconds: 1),
              height:50,
              width:changeButton?50:150,
             
              alignment: Alignment.center,
              child: changeButton?Icon(Icons.done,color:Colors.white,):Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
              decoration: BoxDecoration(color:Colors.deepPurple,
             // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
              borderRadius: BorderRadius.circular(changeButton?50:8),
               ),
            ),
          )
          // ElevatedButton(
          //   onPressed:()=> Navigator.pushNamed(context, MyRoute.homeRoute),
          
          // child: Text('Login'),
          //  ),
          ],
          
        ),
      ),
    );
  }
}