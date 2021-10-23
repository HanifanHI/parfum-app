import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_parfum_app/screens/detail_screen.dart';
import '/models/product_model.dart';
import '/widgets/bottom_nav_bar.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import '/constants/color_constant.dart';

class HomeScreen extends StatelessWidget {
  static const homeRouteName = '/home-route';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: cBackground,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              // * NAVBAR
              Container(
                height: 170,
                decoration: BoxDecoration(
                  color: cPurpleFirst,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      color: cPurpleFirst,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DIOR',
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 5),
                          ),
                          Text(
                            'GALERRY',
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white60,
                                letterSpacing: 3),
                          )
                        ],
                      ),
                    ),
                    // * SEARCH AND MENU
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: cOrange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 60,
                            decoration: BoxDecoration(
                              color: cPurpleSecond,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: TextField(
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              cursorColor: cOrange,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: SvgPicture.asset(
                                  'assets/svg/search.svg',
                                  color: Colors.white,
                                  height: 22,
                                ),
                                hintText: 'Search here...',
                                hintStyle: GoogleFonts.poppins(
                                    color: Colors.white60,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: SvgPicture.asset(
                                'assets/svg/menu.svg',
                                color: Colors.white,
                                height: 22,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // * TABBAR
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                height: 35,
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    physics: BouncingScrollPhysics(),
                    labelPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    labelColor: Colors.white,
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1),
                    isScrollable: true,
                    unselectedLabelColor: Colors.black54,
                    unselectedLabelStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1),
                    indicator: RectangularIndicator(
                      bottomLeftRadius: 20,
                      bottomRightRadius: 20,
                      topLeftRadius: 20,
                      topRightRadius: 20,
                      color: cPurpleFirst,
                    ),
                    tabs: <Widget>[
                      Tab(
                        child: Text('All'),
                      ),
                      Tab(
                        child: Text('Fragrance'),
                      ),
                      Tab(
                        child: Text('Skin Care'),
                      ),
                      Tab(
                        child: Text('Parfum'),
                      ),
                    ],
                  ),
                ),
              ),

              // * BANNER
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 200,
                decoration: BoxDecoration(
                  color: cGreySecond,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(DetailScreen.detailRouteName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: cGreyFirst,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/images/parfum-1.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: cGreySecond,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'J\'ADORE',
                                    style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Text(
                                    'Absolu',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                '\$68.70',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 50,
                              decoration: BoxDecoration(
                                color: cOrange,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Shop now',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // * LIST PRODUCTS
              Container(
                margin: EdgeInsets.only(left: 20, top: 18),
                height: 200,
                // color: Colors.red,
                child: ListView.builder(
                  itemCount: products.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 140,
                      // color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: cGreyFirst,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                              ),
                              image: DecorationImage(
                                image: AssetImage(products[index].image),
                              ),
                            ),
                          ),
                          Text(
                            products[index].title,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            products[index].subTitle,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
