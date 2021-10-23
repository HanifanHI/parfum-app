import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_parfum_app/constants/color_constant.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _isSelected = 0;

  void onTapped(int index) {
    setState(() {
      _isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: BottomNavigationBar(
        currentIndex: _isSelected,
        onTap: onTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _isSelected == 0
                  ? SvgPicture.asset(
                      'assets/svg/home.svg',
                      height: 24,
                      width: 24,
                      color: cOrange,
                    )
                  : SvgPicture.asset(
                      'assets/svg/home.svg',
                      height: 24,
                      width: 24,
                    ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: _isSelected == 1
                  ? SvgPicture.asset(
                      'assets/svg/heart.svg',
                      height: 24,
                      width: 24,
                      color: cOrange,
                    )
                  : SvgPicture.asset(
                      'assets/svg/heart.svg',
                      height: 24,
                      width: 24,
                    ),
              label: 'Herat'),
          BottomNavigationBarItem(
              icon: _isSelected == 2
                  ? SvgPicture.asset(
                      'assets/svg/cart.svg',
                      height: 24,
                      width: 24,
                      color: cOrange,
                    )
                  : SvgPicture.asset(
                      'assets/svg/cart.svg',
                      height: 24,
                      width: 24,
                    ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: _isSelected == 3
                  ? SvgPicture.asset(
                      'assets/svg/user.svg',
                      height: 24,
                      width: 24,
                      color: cOrange,
                    )
                  : SvgPicture.asset(
                      'assets/svg/user.svg',
                      height: 24,
                      width: 24,
                    ),
              label: 'User'),
        ],
      ),
    );
  }
}
