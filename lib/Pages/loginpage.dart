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
    final _formKey=GlobalKey<FormState>();
    moveToHome(BuildContext context)async{
         if(_formKey.currentState.validate()){
                 setState(() {
                  changeButton=true;
                });
                await Future.delayed(Duration(seconds: 1)); //  Remember this await fn for delay. we can use this later. animation nhi use karne par hamlog Navigator direct use kar rahe thein
                
                 await Navigator.pushNamed(context, MyRoute.homeRoute); // await lagaye hain Navigator se pehle taki back aaye to tick sign se dubara login wala state dikha sake
                  setState(() {
                  changeButton=false;
                });
    }
    }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
              child: Form(
                key: _formKey,
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
                  TextFormField(
                decoration:InputDecoration(
                hintText: "Enter User Name",
                labelText: "User Name",
                ),
                validator: (value){
                   if(value.isEmpty){
                     return "User name cannot be Empty";
                   }   return null ;
                },
                 onChanged:(value){
                  setState(() {
                    name=value;
                  });
                },
            ),
            SizedBox(
                height:10.0,
            ),
            TextFormField(
                obscureText: true,
                decoration:InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                
                ),
                 validator: (value){
                   if(value.isEmpty){
                     return "Password cannot be Empty";
                   } else if(value.length<6){
                      return "Password cannot be less than 6";
                   }
                      return null ;
                },
            ),
                ],
            ),
          ),
          SizedBox(
             height: 20.0,
          ),
          // We use InkWell or GestureDetector to use onpressed option with a container.
          InkWell(
            onTap: ()=>moveToHome(context),// onTap ke liye ek naya Function banake upar likhe hain.
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
      ),
    );
  }
}