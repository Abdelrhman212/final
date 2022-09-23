import 'package:final_project/custom/Colors.dart';
import 'package:final_project/home/Work.dart';
import 'package:final_project/loging/loging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionSCREAN extends StatefulWidget {
  const IntroductionSCREAN({Key? key}) : super(key: key);

  @override
  State<IntroductionSCREAN> createState() => _IntroductionSCREANState();
}

class _IntroductionSCREANState extends State<IntroductionSCREAN> {
  final controller = PageController();
  bool Is_lastpage = false;

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: PageView(
          onPageChanged: (index) {
            setState(() {
              Is_lastpage = index == 2;
            });
          },
          controller: controller,
          children: [
            buildPage(
                color: Colors.white,
                urlImage: 'assets/image/cover_intro1.png',
                title: 'Plan Your Trip',
                subtitle:
                    'Plan your trip, choose your destination. Pick the best place for your holiday.',
                logo: 'assets/image/Logo intro.png'),
            buildPage(
                color: Colors.white,
                logo: 'assets/image/Logo intro.png',
                urlImage: "assets/image/intro_2.png",
                title: 'Select The Date',
                subtitle:
                    'Select the day, book your ticket. We giveyou the best price. We guarantied!'),
            buildPage(
                color: Colors.white,
                logo: 'assets/image/Logo intro.png',
                urlImage: 'assets/image/intro_3.png',
                title: 'Enjoy Your Trip',
                subtitle:
                    "Enjoy your holiday! don 't forget to take a photo and share to the world")
          ],
        ),
      ),
      bottomSheet: Is_lastpage
          ?   TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loging()));
      }, child: Text("let's go!",style: TextStyle(color: Custom_Colors.start_gradint,fontWeight: FontWeight.bold,fontSize: 16),),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),backgroundColor: Colors.white,minimumSize: Size.fromHeight(50)),)
          : Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.jumpToPage(3);
                      },
                      child: Text(
                        'SKIP',
                        style: TextStyle(color: Colors.grey),
                      )),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 10,
                        dotColor: Custom_Colors.bootom_sheat,
                        activeDotColor: Custom_Colors.start_gradint,
                      ),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.bounceInOut),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Text(
                        'NEXT',
                        style: TextStyle(color: Custom_Colors.start_gradint),
                      ))
                ],
              ),
            ),
    );
  }

  Widget buildPage(
          {required Color color,
          required String logo,
          required String urlImage,
          required String title,
          required String subtitle}) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo),
            SizedBox(
              height: 35,
            ),
            Image.asset(
              urlImage,
              width: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      );
}
