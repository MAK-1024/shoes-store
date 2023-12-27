

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neon/neon.dart';

import '../../../../../core/utils/app_routing.dart';
import '../../../../../core/utils/assets.dart';





class SplashViewBody2 extends StatefulWidget {
  const SplashViewBody2({super.key});

  @override
  State<SplashViewBody2> createState() => _SplashViewBody2State();
}

class _SplashViewBody2State extends State<SplashViewBody2> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset> slideAnimation;



  @override
  void initState() {
    super.initState();
    slidingAnimation();

    NavigateHome();
  }

  @override
  void dispose() {

    super.dispose();
    animationController.dispose();
  }

  void slidingAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1));

    slideAnimation =
        Tween<Offset>(begin: const Offset(0,10) ,  end:Offset.zero )
            .animate(animationController);

    animationController.forward();
    slideAnimation.addListener(() {
      setState(() {

      });
    });
  }

  void NavigateHome() {
    Future.delayed(Duration(seconds: 4) , ()
    {

      GoRouter.of(context).push(AppRouter.KStartView);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo,width: 200,height: 200,),
          // SizedBox(height: 20,),
          AnimatedBuilder(
            animation: slideAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slideAnimation,
                child: Neon(
                  text: 'WearUp Store',
                  color: Colors.brown,
                  fontSize: 35,
                  font: NeonFont.NightClub70s,
                  flickeringText: true,
                  flickeringLetters: [3, 10],
                ),
              );


            },
          ),
        ],
      ),
    );
  }
}
