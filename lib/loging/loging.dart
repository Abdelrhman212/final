import 'dart:convert';

import 'package:final_project/api/Login_Response.dart';
import 'package:final_project/custom/Colors.dart';
import 'package:final_project/home/bottom.dart';
import 'package:final_project/home/home.dart';
import 'package:final_project/home/work.dart';
import 'package:final_project/loging/sin_up.dart';
import 'package:final_project/provider/login_provideer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../Animation/FadeAnimation.dart';

class Loging extends StatelessWidget {
  Widget build(BuildContext context) {
    Login_provider login_provider = Provider.of<Login_provider>(context);

    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: Width,
          height: Height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Custom_Colors.start_gradint,
            Custom_Colors.end_gradint
          ])),
          child: Form(
            key: login_provider.LoginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Height * .070,
                ),
                FadeAnimation(
                  1,
                  Image.asset('assets/image/logo_loging.png'),
                ),
                SizedBox(
                  height: Height * 0.01,
                ),
                FadeAnimation(
                    1.2,
                    Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: 30, right: 30, bottom: 20),
                        height: Height * 0.1,
                        width: Width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                          color: Colors.white12,
                        ),
                      ),
                      FadeAnimation(
                          1.4,
                          Container(
                            margin: EdgeInsets.only(
                                top: 15, left: 10, right: 10, bottom: 20),
                            height: Height * 0.1,
                            width: Width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                40,
                              ),
                              color: Colors.white12,
                            ),
                          )),
                      FadeAnimation(
                          1.6,
                          (Container(
                            margin: EdgeInsets.only(top: 30),
                            height: Height * .41,
                            width: Width * 0.83,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Sign In',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains('@')) {
                                        return 'Enter valid email';
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (value) {
                                      login_provider.Update_email(value!);
                                    },
                                    decoration:
                                        InputDecoration(labelText: 'Email'),
                                  ),
                                ),
                                SizedBox(
                                  height: Height * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'please enter your password';
                                      }

                                      {
                                        return null;
                                      }
                                    },
                                    onSaved: (value) {
                                      login_provider.Update_password(value!);
                                    },
                                    decoration:
                                        InputDecoration(labelText: 'Password'),
                                  ),
                                ),
                                SizedBox(
                                  height: Height * 0.02,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: Width * 0.04),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                        color: Custom_Colors.start_gradint),
                                  ),
                                ),
                                SizedBox(
                                  height: Height * 0.03,
                                ),
                                login_provider.is_loading
                                    ? CircularProgressIndicator(
                                        color: Custom_Colors.start_gradint)
                                    : GestureDetector(
                                        onTap: () {
                                          if (login_provider
                                              .LoginFormKey.currentState!
                                              .validate()) {
                                            login_provider
                                                .LoginFormKey.currentState!
                                                .save();

                                            loging(login_provider, context);
                                          }
                                        },
                                        child: Container(
                                          height: Height * 0.06,
                                          width: Height * 0.4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color:
                                                  Custom_Colors.start_gradint),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(''),
                                              Text('Sign in '),
                                              CircleAvatar(
                                                radius: 24,
                                                backgroundColor: Colors.white24,
                                                child: Icon(
                                                  Icons.arrow_forward_rounded,
                                                  color: CupertinoColors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                              ],
                            ),
                          ))),
                    ])),
                SizedBox(
                  height: Height * 0.16773,
                ),
                FadeAnimation(
                    1.8,
                    Container(
                      margin: EdgeInsets.only(
                          left: Width * 0.34, right: Width * 0.34),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/image/Facebook.png'),
                          Image.asset('assets/image/Google.png')
                        ],
                      ),
                    )),
                SizedBox(
                  height: Height * 0.011,
                ),
                FadeAnimation(
                    2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sing_up()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future loging(Login_provider login_provider, BuildContext context) async {
    login_provider.Updated_loading(true);

    Response response =
        await post(Uri.parse('http://alcaptin.com/api/login'), body: {
      'email': login_provider.email,
      'password': login_provider.password,
    }, headers: {
      'Accept': 'application/json',
    });
    dynamic JesonResponse = jsonDecode(response.body);
    LoginResponse loginResponse = LoginResponse.fromJson(JesonResponse);
    print('Toke is : ${loginResponse.data!.accessToken}');
    if (response.statusCode == 200) {
      LoginResponse loginResponse = LoginResponse.fromJson(JesonResponse);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Bottom()));
    } else {
      print(JesonResponse["message"]);
    }
    login_provider.Updated_loading(false);
    print(response.body);
  }
}
