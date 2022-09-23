import 'dart:ffi';
import 'dart:math';

import 'package:final_project/Animation/FadeAnimation.dart';
import 'package:final_project/custom/Colors.dart';
import 'package:final_project/loging/loging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Sing_up extends StatefulWidget {
  @override
  State<Sing_up> createState() => _Sing_upState();
}

class _Sing_upState extends State<Sing_up> {

  final Form_key_sing = GlobalKey<FormState>();
  String Phone = '';
  String pasword_sing_up = '';
  String name = '';
  String email_sing = '';
  bool Is_sign_up = false;
  bool checked = false;

  Widget build(BuildContext context) {
    final Height =MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Custom_Colors.start_gradint,
              Custom_Colors.end_gradint
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: Form_key_sing,
                  child: SizedBox(
                    height: 30,
                  )),

              FadeAnimation(1, Image.asset('assets/image/logo_loging.png')),

              SizedBox(
                height: 20,
              ),
              Stack(
                children:[  FadeAnimation(1.3, Container(margin: EdgeInsets.only(left: 30,right: 30,bottom: 2,top: 0),
                  height:Height*0.4,
                  width: Width*0.7,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(29,),
                    color: Colors.white12,

                  ),
                )),
                  FadeAnimation(1.4, Container(
                    margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
                    height:Height* 0.09,
                    width: Width*.8,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(29,),
                      color: Colors.white12,

                    ),
                  )),
                  FadeAnimation(1.6,Container(
                    margin: EdgeInsets.only(top:25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  width: 350,
                  height: 400,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30, top: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FadeAnimation(1.2, Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                        FadeAnimation(1.4, TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'plrease enter your name';
                            }
                            {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            name = value!;
                          },
                          decoration: InputDecoration(labelText: 'Name'),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.contains('@')) {
                              return 'please enter valid email';
                            }
                            {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            setState(() {
                              email_sing = value!;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter valid password';
                            }
                            {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            Phone = value!;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: checked,
                                fillColor: MaterialStateProperty.all(
                                    Custom_Colors.start_gradint),
                                checkColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    checked = value!;
                                  });
                                }),
                            Text(
                              'I agree the ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text('Terms & Conditions ',
                                style: TextStyle(
                                    color: Custom_Colors.start_gradint,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Custom_Colors.start_gradint),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(''),
                                Text(
                                  'Sin Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white24,
                                  child: Is_sign_up
                                      ? CircularProgressIndicator()
                                      : IconButton(color: Colors.white,
                                          icon: Icon(
                                            Icons.arrow_forward_rounded,
                                          ),
                                          onPressed: () {
                                            if (Form_key_sing.currentState!
                                                .validate()) {
                                              Form_key_sing.currentState!.save();
                                            }
                                            Sing();
                                          },
                                        ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                )),
              ]),
              SizedBox(
                height: 60,
              ),
              FadeAnimation(1.8, Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image/Facebook.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/image/Google.png'),
                ],
              )),
              SizedBox(
                height: 20,
              ),
             FadeAnimation(2,  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Loging()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Future Sing() async {
    setState(() {
      Is_sign_up = true;
    });
    Response response =
        await post(Uri.parse('http://alcaptin.com/api/register'), body: {
          'first_name':'ahmed',
      'last_name': 'elshora',
          'gender':'male',
      'email': email_sing,
      'password': pasword_sing_up,
      'age': Phone,
    });
    setState(() {
      Is_sign_up = false;
    });
  }
}
