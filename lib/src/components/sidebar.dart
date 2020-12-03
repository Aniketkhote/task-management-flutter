import 'package:flutter/material.dart';
import 'package:task_management/constant.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      color: Colors.white,
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logo(),
          menu(),
          notification(),
        ],
      ),
    );
  }

  Row logo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: kPink,
          child: Text(
            'T',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          'Task'.toUpperCase(),
          style: TextStyle(
            color: kPink,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 30),
      ],
    );
  }

  Widget menu() {
    return Row(
      children: [
        meniItem(name: 'Projects', index: 0),
        meniItem(name: 'Setting', index: 1),
        meniItem(name: 'Help', index: 2),
      ],
    );
  }

  Widget meniItem({String name, int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          name,
          style: TextStyle(
            color: (currentIndex == index) ? kPink : kGrey,
            fontWeight:
                (currentIndex == index) ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget notification() {
    return Icon(
      Icons.notifications,
      color: kGrey,
    );
  }
}
