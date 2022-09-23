import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Work.dart';

class Login_profile extends StatelessWidget {
  const Login_profile({Key? key}) : super(key: key);

  @override
  Widget build( BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset('assets/image/Body2.png',width: 150,height: 130,),
          SizedBox(
            height: 30,
          ),
          Text(
            'Abdelrhman Adel',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'wbodyadel@gmail.com',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 30,),
          Container(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.red,
                  radius: 15,
                ),
                title:                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notification'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),

                onTap: () {},
              )),

          Container(
              child: ListTile(

                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.purpleAccent,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                title:               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Location'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Work()));
                },
              )),
          Container(
              child: ListTile(

                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                ),
                title:               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Langage'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),

                onTap: () {},
              )),
          Container(
              child: ListTile(

                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.family_restroom,
                    color: Colors.white,
                  ),
                ),
                title:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Invite Friends'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
                onTap: () {},
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 4
              ,thickness: 1,
              indent: 15,
              color: Colors.grey,
              endIndent: 15,
            ),
          ),
          Container(
              child: ListTile(

                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.headset_mic_outlined,
                    color: Colors.white,
                  ),
                ),
                title:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Help Center'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
                onTap: () {},
              )),
          Container(
              child: ListTile(

                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                title:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Setting'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
                onTap: () {},
              )),
          Container(
              child: ListTile(

                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                ),
                title:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Logout'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
                onTap: () {},
              )),

        ],
      ),
    );
  }
}
