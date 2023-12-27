import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../../core/utils/app_routing.dart';


class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {

  void NavigateHome() {
    Future.delayed(Duration(seconds: 2) , ()
    {

      GoRouter.of(context).push(AppRouter.KRegisterView);
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('WearUp',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),),
                SizedBox(width: 5,),
                Icon(
                  Icons.snowshoeing_sharp
                ),
              ],
            ),
            Lottie.network('https://lottie.host/4cf24869-6e7a-4f70-963d-65e5b7d176f3/LqDT95npjU.json',width: 400 , height: 400 , repeat: false),
            Text('Shopping Made Simple, Fun, and Fast',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
            ), textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                NavigateHome();
              },
              child: Text('Sign up'),
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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?' , ),
                          TextButton(onPressed: (){

                          }, child: Text('Login',style: TextStyle(color: Colors.black),))
                        ],
                      )


          ],
        ),
      ),
    );
  }
}
