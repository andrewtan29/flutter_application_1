// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart/button.dart';

class page3 extends StatelessWidget {
   page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   backgroundColor: Color.fromARGB(255, 139, 56, 247),
      //   title: Center(
      //     child: Text('Register Menu', 
      //     style: TextStyle(color: Colors.white),
      //     ),
      //   ),
      // ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //judul menu register
            Text('REGISTER', 
            style: TextStyle(color:Color.fromARGB(255, 139, 56, 247),fontSize: 28, fontWeight: FontWeight.bold)
            ),

            Text('For your New Account', 
            style: TextStyle(color:Color.fromARGB(255, 139, 56, 247),fontSize: 18,)
            ),

            SizedBox(height: 30,),
            //nama lengkap textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 209, 255),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 209, 255),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            //nomor telepon textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 209, 255),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            //email textfield
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 209, 255),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 209, 255),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            //password lagi textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 209, 255),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                    ),
                  ),
                ),
              ),
            ),
            //konfirmasi button
            SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50, width: 110,
                  
                  
                 child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: (){
                    Navigator.pushNamed(context, '/homePage');
                    print("user menuju home page");
                  }, 

                  child: Text('Register', 
                          style: 
                          TextStyle(color:Colors.white, fontWeight: FontWeight.bold),
                  ),
                 ),
                ),
              ],
            ),
          ),
          ],
        ),
      ) 
    );
  }
}