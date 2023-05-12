import 'dart:async';
import 'package:bumble/pageviewContainer.dart';
import 'package:bumble/src/card_swiper.dart';
import 'package:bumble/src/card_swiper_controller.dart';
import 'package:bumble/src/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'detailScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CardSwiperController controller = CardSwiperController();
  int _selectedIndex = 0;
  int currentIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> cards = [
    "assets/icons/SRK.jpg",
    "assets/icons/SRK.jpg",
    "assets/icons/SRK.jpg"
  ];
  CardSwiperController? cardSwiperController;
  bool _isOntap = false;
  List<int> items = List<int>.generate(100, (int index) => index);
  Future<bool> showExitPopup() async {
    return await showDialog( //show confirm dialogue
      //the return value will be from "Yes" or "No" options
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Exit App'),
        content: Text('Do you want to exit an App?'),
        actions:[
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(false),
            //return false when click on "NO"
            child:Text('No'),
          ),

          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            //return true when click on "Yes"
            child:Text('Yes'),
          ),

        ],
      ),
    )??false; //if showDialouge had returned null, then return false
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:showExitPopup,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/burger menu.svg",
                    height: 17,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset("assets/icons/trackback.svg"),
                ],
              ),
            ),
            title: Text(
              "bumble",
              style: TextStyle(
                  color: Colors.amber,
                  fontStyle: FontStyle.normal,
                  fontFamily: "assets/fonts/Poppins/Poppins-Regular.ttf"),
            ),
            actions: [
              SvgPicture.asset(
                "assets/icons/Speed dating.svg",
                height: 20,
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                "assets/icons/filter.svg",
                height: 15,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/profile.svg",
                  height: 22,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/bottom tab icon.svg",
                  height: 22,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/like.svg",
                  height: 22,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/find your match.svg",
                  height: 22,
                ),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            selectedIconTheme: IconThemeData(color: Colors.black),
            type: BottomNavigationBarType.fixed,
          ),
          body: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CardSwiper(
              isLoop: false,
              numberOfCardsDisplayed:_isOntap?1:2,
              controller: cardSwiperController,
              padding: EdgeInsets.zero,
              cardsCount:cards.length,
              onSwipe: onSwipe,
              isVerticalSwipingEnabled: false,
              cardBuilder: (context, index) =>
                  GestureDetector(
                      onTap: (){
                        _isOntap=true;
                        setState(() {});
                      },
                      child:_isOntap?DetailScreen():PageviewContainer(imageUrl: cards[index])
            ),
            ),
          ),


      ),
    );
  }

  bool onSwipe(int index, int? previousIndex, CardSwiperDirection direction) {
    _isOntap=false;
    setState(() {});
    print(direction);
    return true;
  }
}
