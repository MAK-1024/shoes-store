

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text('Sing Up' ,),
        centerTitle: true,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                  hintText: 'name',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                  hintText: 'email',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                  hintText: 'password',
                  suffixIcon: IconButton(onPressed: () {  }, icon: Icon(Icons.remove_red_eye_rounded),)
                ),
              ),
            ),

            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  value: isChecked,
                  onChanged: (newValue) {
                    setState(() {
                      isChecked = newValue ?? false; // If newValue is null, default to false
                    });
                  },
                ),
                Text('I accept Privacy Policy and the Terms of Use', style: TextStyle(
                  fontSize: 12
                ),)
              ],
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              onPressed: () {

              },
              child: Text('Create account'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(300, 50)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
              ),
            ),


            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(fontSize: 14 , fontWeight: FontWeight.bold) ,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GoogleAuthButton(
                  onPressed: () {},
                  style: AuthButtonStyle(
                    buttonType: AuthButtonType.icon,
                  ),
                ),

                FacebookAuthButton(
                  onPressed: (){},
                  style: AuthButtonStyle(
                    buttonType:AuthButtonType.icon,
                  ),
                )
              ],
            ),



          ],
        ),
      ),
    );
  }
}
