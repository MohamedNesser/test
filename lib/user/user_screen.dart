import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newproject/bloc/login_cubit/login_cubit.dart';
import 'package:newproject/bloc/update_name_cubit/cubit.dart';
import 'package:newproject/bloc/update_name_cubit/state.dart';
import 'package:newproject/screens/profile_screen/profile/profile_screen.dart';

void main() => runApp(MaterialApp(home: BottomNavBarscreen()));

class BottomNavBarscreen extends StatefulWidget {
  @override
  _BottomNavBarscreenState createState() => _BottomNavBarscreenState();
}

class _BottomNavBarscreenState extends State<BottomNavBarscreen> {
  int page = 0;
  bool notpage = false;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> _buildScreens = [
    HomeScreen(),
    BlocConsumer<UpDateNameCubit, UpDateNameState>(
      listener: (context, state) {
     
      },
      builder: (context, state) {
        return Profilepage();
      },
    ),
    InfoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: page,
        height: MediaQuery.of(context).size.height / 14,
        items: [
          CurvedNavigationBarItem(
            child: Column(
              children: [
                Icon(
                  Icons.home_outlined,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          CurvedNavigationBarItem(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<UpDateNameCubit>().GitProfile();
                  },
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          CurvedNavigationBarItem(
            child: Column(
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
        color: Colors.white,
        backgroundColor: Color(0xFFC8C5CE),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _buildScreens[page],
    );
  }
}
