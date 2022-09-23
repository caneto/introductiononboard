import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 42.0),
          child: IntroductionScreen(
              globalBackgroundColor: Colors.white,
              scrollPhysics: const BouncingScrollPhysics(),
              pages: [
                PageViewModel(
                  titleWidget: const Text("Write Title of Page", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Write the more discription of the page. Write the more discription of page",
                  image: Image.asset("images/1.png", height: 400, width: 400,),
                ),
                PageViewModel(
                  titleWidget: const Text("Write Title of Page", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Write the more discription of the page. Write the more discription of page",
                  image: Image.asset("images/2.png", height: 400, width: 400,),
                ),
                PageViewModel(
                  titleWidget: const Text("Write Title of Page", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Write the more discription of the page. Write the more discription of page",
                  image: Image.asset("images/3.png", height: 400, width: 400,),
                ),
                PageViewModel(
                  titleWidget: const Text("Write Title of Page", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  body: "Write the more discription of the page. Write the more discription of page",
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
              skip: const Text("Skip", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF6C63FF),
                ),
              ),
              next: const Icon(
                Icons.arrow_forward,
                color: Color(0xFF6C63FF),
              ),
              done: const Text("Done", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF6C63FF),
              ),),
              dotsDecorator: DotsDecorator(
                size: Size.square(10.0),
                activeSize: Size(20.0, 10.0),
                color: Colors.black26,
                activeColor: Color(0xFF6C63FF),
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
