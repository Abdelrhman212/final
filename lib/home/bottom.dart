import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project/custom/Colors.dart';
import 'package:final_project/home/home.dart';
import 'package:final_project/home/work.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'Date.dart';
import 'Login_profile.dart';
import 'fafvoirte.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int page_index = 0;
  final _pageOption = [home(), Favorite(), Work(), Date(), Login_profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
       _pageOption[page_index],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(
            icon: Icons.home_outlined,
          ),
          TabItem(
            icon: Icons.favorite_border,
          ),
          TabItem(
            icon: Icons.work_history_outlined,
          ),
          TabItem(icon: Icons.date_range_outlined),
          TabItem(
            icon: Icons.person_outline,
          ),
        ],
        backgroundColor: Colors.white,
        activeColor: Custom_Colors.start_gradint,
        color: Colors.black,
        initialActiveIndex: page_index,
        onTap: (int index) {
          setState(() {
            page_index = index;
          });
        },
      ),
    );
  }
}
