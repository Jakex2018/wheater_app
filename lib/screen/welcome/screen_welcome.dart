import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wheater_app/screen/home/screen_home.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});
  
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      scrollPhysics: const BouncingScrollPhysics(),
      pages: [
        PageViewModel(
          titleWidget: const Text('Welcome to Head gold',style: TextStyle(fontSize: 30),),
          bodyWidget: const Text('Welcome to Head gold',style: TextStyle(fontSize: 20)),
          image: Image.asset('assets/images/logo.png',height: 400,width: 400,)
        ),
        PageViewModel(
          titleWidget: const Text('Welcome to Head gold',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
          bodyWidget: const Text('Welcome to Head gold',style: TextStyle(fontSize: 20)),
          image: Image.asset('assets/images/logo.png',height: 400,width: 400,)
        ),
        PageViewModel(
          titleWidget: const Text('Welcome to Head gold',style: TextStyle(fontSize: 30),),
          bodyWidget: const Text('Welcome to Head gold',style: TextStyle(fontSize: 20)),
          image: Image.asset('assets/images/logo.png',height: 400,width: 400,)
        ),
      ],
      onDone: () {
        _navigateScreenHome(context);
      },
      onSkip: (){
        _navigateScreenHome(context);
      },
      showSkipButton: true,
      showDoneButton: true,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward,color: Colors.black,),
      done: const Text('Done'),
    );
  }
}

void _navigateScreenHome(BuildContext context) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => const ScreenHome(),)
  );
}
