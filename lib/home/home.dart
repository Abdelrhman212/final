import 'dart:convert';

import 'package:final_project/api/List_Response.dart';
import 'package:final_project/custom/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {


  String access_token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM5MzMxNzUsIm5iZiI6MTY2MzkzMzE3NSwianRpIjoiaUE0TWNlY0FhbGFYRkFTMyIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.uiOH7ya_yimcjvbW2jVLJIotWds70LVAn3U9a2Nt33Q';
  Places?listResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Image.asset('assets/image/Side Manu Arrow.png'),
                Text('TOURS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Icon(Icons.search,color: Colors.black,)
              ],),
              SizedBox(height: 20,),
              Text(
                'Popular Destination',
                style: TextStyle(
                    color: Custom_Colors.start_gradint,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '10 Tours Avialable',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/image/Icon_paris.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Paris'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(05.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/image/icon_newyork.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('india')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/image/icon_los.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('new york')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/image/icon_india.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('losangols')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/image/icon_india.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('losangols')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset('assets/image/background.png'),
                  ),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (contex, item) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                margin: EdgeInsets.only(
                                    left: 25, right: 25, top: 90),
                                padding: EdgeInsets.only(left: 13,top: 13,bottom: 13),
                                height: 120,
                                width: 270,
                                decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Holidays',
                                          style:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Say yes to iconic snow Catamount,',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          ),
                                    ),

                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Hillsdale, New York!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                         ),
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [

                                        Text(
                                          'Book your holiday package today!',style: TextStyle(fontSize: 10),

                                        ),
                                        SizedBox(width: 40,),
                                     CircleAvatar(
                                       radius: 13,
                                       backgroundColor: Custom_Colors.start_gradint,
                                       child: Icon(Icons.arrow_forward,color: CupertinoColors.white,),
                                     ),


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(

                                margin: EdgeInsets.only(
                                    left: 30, right: 30, top: 90),
                                padding: EdgeInsets.only(left: 13,top: 13,bottom: 13),
                                height: 120,
                                width: 270,
                                decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Holidays',
                                          style:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Say yes to iconic snow Catamount,',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          ),
                                    ),

                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Hillsdale, New York!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                         ),
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [

                                        Text(
                                          'Book your holiday package today!',style: TextStyle(fontSize: 10),

                                        ),
                                        SizedBox(width: 40,),
                                     CircleAvatar(
                                       radius: 13,
                                       backgroundColor: Custom_Colors.start_gradint,
                                       child: Icon(Icons.arrow_forward,color: CupertinoColors.white,),
                                     ),


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(

                                margin: EdgeInsets.only(
                                    left: 25, right: 25, top: 90),
                                padding: EdgeInsets.only(left: 13,top: 13,bottom: 13),
                                height: 120,
                                width: 270,
                                decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Holidays',
                                          style:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Say yes to iconic snow Catamount,',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          ),
                                    ),

                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Hillsdale, New York!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                         ),
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [

                                        Text(
                                          'Book your holiday package today!',style: TextStyle(fontSize: 10),

                                        ),
                                        SizedBox(width: 40,),
                                     CircleAvatar(
                                       radius: 13,
                                       backgroundColor: Custom_Colors.start_gradint,
                                       child: Icon(Icons.arrow_forward,color: CupertinoColors.white,),
                                     ),


                                      ],
                                    ),

                                  ],

                                ),
                              ),


                            ],
                          )
                  ),
                ],

              )),
       ///List_Api
       /*  ListView.builder(scrollDirection: Axis.horizontal
              ,
              itemCount: listResponse?.data?.data?.length,

              itemBuilder: (context,index){
              InnerData?jsonitem=listResponse?.data?.data?[index];
             return     Row(

            children: [
              Container(
                child: Image.asset('assets/image/Tours1.png'),
              )
            ],
              );})*/


        ],

      ),
    );
  }
  Future List_get()async{
    Response response =await get(Uri.parse('http://alcaptin.com/api/places'),headers: {
      'Authorization':"Bearer $access_token"
         },
    );
    dynamic convertjeson=jsonDecode(response.body);
    if(response.statusCode==200){
         listResponse=Places.fromJson(convertjeson);
      print(listResponse!.message);

    }{
      return 'please try again';
    }

  }
}
