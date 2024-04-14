// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart/button.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 88, 99, 167),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 25,),

          //Greetings
         Text (
          'Hello! Salam Super',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
         
          SizedBox(height: 20,),

          //email textfield
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Container(decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
           ),
             child: Padding(
               padding: const EdgeInsets.only(left: 20),
               child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                ),
               ),
             ),
           ),
         ),

          SizedBox(height: 10,),

          //password textfield
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Container(decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
           ),
             child: Padding(
               padding: const EdgeInsets.only(left: 20),
               child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
               ),
             ),
           ),
         ),

        SizedBox(height: 10,),
        
        //forgotpassword
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Text(
                'Forgot Password', 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 14
                  ),
                ),
             ],
           ),
         ),

          SizedBox(height: 20,),

          //sign in button
         Container(height: 50, width: 440,
           child: ElevatedButton(
            child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold),),
            
            onPressed: (){
              Navigator.pushNamed(context, '/homePage');
            }, 
           ),
         ),
       
          SizedBox(height: 10,),

         //register, click
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                'Not a Member?', 
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.normal),
                  ),    

               Container(
                child: ElevatedButton(
                style: buttonRegister,

                onPressed: (){
                  Navigator.pushNamed(context, '/page3');
                  }, 

                child: Text(
                  'Register Here!', 
                  style: TextStyle(color: Colors.white, 
                  fontWeight: FontWeight.bold),
                ),
                ),
               ),
               
             ],
           ),

            SizedBox(height: 30,),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50, height: 50,
                  decoration: 
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  ),

                 SizedBox(width: 20,),

                 Container( 
                  width: 50, height: 50,
                  decoration: 
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                ),

                SizedBox(width: 20,),

                 Container( 
                  width: 50, height: 50,
                  decoration: 
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                ), 
              ],
             ),
           )
        ],
        
        ),
     ), 
     );
  }
}