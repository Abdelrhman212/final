import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/api/Info_Response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../custom/Colors.dart';

class Paris extends StatefulWidget {
  const Paris({Key? key}) : super(key: key);

  @override
  State<Paris> createState() => _ParisState();
}

class _ParisState extends State<Paris> {
  String Token='yJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM5MzMxNzUsIm5iZiI6MTY2MzkzMzE3NSwianRpIjoiaUE0TWNlY0FhbGFYRkFTMyIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.uiOH7ya_yimcjvbW2jVLJIotWds70LVAn3U9a2Nt33Q';

  CarouselController carouselController = CarouselController();

  InfoResponse ?infoResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SlidingUpPanel
            (backdropEnabled: true,
              backdropTapClosesPanel: true,
              color: Colors.transparent,
maxHeight: 200,
              minHeight: 40,
              panel: Container(

                decoration: BoxDecoration(color: CupertinoColors.white,borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20))),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Overview',
                            style: TextStyle(
                                color: Custom_Colors.start_gradint,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Places',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                          Text(
                            'Itinerary',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                          Text(
                            'Reviwe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 4,
                      thickness: 2,
                    ),
                Container(margin: EdgeInsets.all(20),
                  child: Column(children: [    Row(
                    children: [
                      Text('\$1,020',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: 6,
                      ),
                      Text(' per person')
                    ],
                  ),
                    Row(
                      children: [
                        Image.asset('assets/image/rigt.png'),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Custom_Colors.start_gradint),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(color: CupertinoColors.white),
                                )))
                      ],
                    )],),
                )
                  ],
                ),
              ),
              body: SingleChildScrollView(
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 65,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/image/Side Manu Arrow.png'),
                          Text(
                            'TOURS',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Stack(
                        children: [
                          Image.asset('assets/image/ground_15.png'),
                          Container(
                              margin: EdgeInsets.all(35),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Top 10 Favourite',
                                    style: TextStyle(
                                        color: CupertinoColors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'Destination In Paris',
                                    style: TextStyle(
                                        color: CupertinoColors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 320),
                            child: Container(
                              margin: EdgeInsets.all(9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Text(
                                    'Disneyland Paris',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Departure',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '23rd Oct 2017',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Duration',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '5 Days / 4  Nights',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Discover 7 World Heritage Sites in this tour.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Fans of Mickey can visit Disneyland Paris which is located 32 km from central Paris,with connection to the suburban RER A.',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Disneyland Paris has two theme parks: Disneyland (with Sleeping Beauty's castle) and Walt Disney Studios. Top attractions are Space Mountain, It's a Small World and Big Thunder Mountain.",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(

                            child: CarouselSlider(
                                items: itemm
                                    .map((i) => Builder(
                                          builder: (BuildContext) {
                                            return Expanded(
                                              child: Padding(
                                                padding:const EdgeInsets.symmetric(vertical: 100,horizontal:1 ),
                                                child: Container(
                                                  width: 1000,
                                                  height: 1000,
                                                  margin: EdgeInsets.all(0),
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    child: Image.asset(
                                                      i,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                  height: 450,
                                  aspectRatio: 16 / 9,
                                  viewportFraction: 0.8,
                                  initialPage: 0,
                                  enableInfiniteScroll: true,
                                  reverse: false,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 3),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: true,
                                  scrollDirection: Axis.horizontal,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                      SizedBox(height: 100,)
                ]),
              )),
        ));

  }
  Future Info()async{
    Response response=await get(Uri.parse('http://alcaptin.com/api/places/2'),headers: {
      'Authorization':'Bearer $Token'
    });
dynamic convert=jsonDecode(response.body);
 infoResponse=InfoResponse.fromJson(convert);
  }

  List itemm = [
    'assets/image/paris2.png',
    'assets/image/paris3.png',
    'assets/image/paris4.png',
  ];
}
