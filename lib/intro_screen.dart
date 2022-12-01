import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 52.0),
          child: IntroductionScreen(
              globalBackgroundColor: Colors.white,
              scrollPhysics: const BouncingScrollPhysics(),
              pages: [
                PageViewModel(
                  titleWidget: const Text("Escreva o título da página", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Escreva mais descrição da página",
                  image: Image.asset("images/1.png", height: 400, width: 400,),
                ),
                PageViewModel(
                  titleWidget: const Text("Escreva o título da página", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Escreva mais descrição da página 2",
                  image: Image.asset("images/2.png", height: 400, width: 400,),
                ),
                PageViewModel(
                  titleWidget: const Text("Escreva o título da página", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Escreva mais descrição da página 3",
                  image: Image.asset("images/3.png", height: 400, width: 400,),
                ),
                PageViewModel(
                  titleWidget: const Text("Escreva o título da página", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Escreva mais descrição da página Fim",
                  image: Image.asset("images/4.png", height: 400, width: 400,),
                )
              ],
              onDone: () {
                Navigator.pushNamed(context, "home");
              },
              onSkip: () {
                Navigator.pushNamed(context, "home");
              },
              showSkipButton: true,
              skip: const Text("Pular", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.teal,
                ),
              ),
              next: const Icon(
                Icons.arrow_forward,
                color: Colors.green
              ),
              done: const Text("Fim", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blueAccent
              ),),
              dotsDecorator: DotsDecorator(
                size: Size.square(10.0),
                activeSize: Size(20.0, 10.0),
                color: Colors.black26,
                activeColor: Colors.red,
                spacing: EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                )
              ),
          ),
        ),
    );
  }
}
