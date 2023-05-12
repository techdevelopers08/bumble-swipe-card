import 'package:bumble/helperWidget/Bumble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageviewContainer extends StatefulWidget {
 final String?imageUrl;
   PageviewContainer({Key? key, this.imageUrl}) : super(key: key);

  @override
  State<PageviewContainer> createState() => _PageviewContainerState();
}

class _PageviewContainerState extends State<PageviewContainer> {
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BumbleScrollbar(
      child: ListView(
        controller: _firstController,
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/1.2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.imageUrl??""))),
              ),
              Positioned(
                left: 15,
                top: 20,
                child: SvgPicture.asset("assets/icons/double quotes.svg", height: 20,),
              ),
              Positioned(
                right: 15,
                top: 20,
                child: SvgPicture.asset("assets/icons/recommend.svg", height: 25,),

              ),
              Positioned(
                right: 15,
                bottom: 20,
                child: SvgPicture.asset("assets/icons/Star.svg", height: 60,),
              ),
              Positioned(
                left: 25,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("S, 21", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),),
                    SizedBox(height: 6,),
                    SvgPicture.asset("assets/icons/heart2.svg", height: 40,),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.yellow[50],
            child:ListView(
              controller: _firstController,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My basics",style: TextStyle(color: Colors.black38,fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Wrap(

                        spacing: 10,
                        children:   [
                          Chip(
                              avatar: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/height.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("156 cm",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/exercise.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Sometimes",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar:Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/Education.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("In college",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar:Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.account_circle_rounded),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Woman",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/zodiac-1.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Aquarius",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/religion.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("jain",style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("My interests",style: TextStyle(color: Colors.black38,fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Wrap(
                        runSpacing: 10,
                        spacing: 10,
                        children:   [
                          Chip(
                              avatar:Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/makeup.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Make-up",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/yoga.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Yoga",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/badminton.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Badminton",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/Horror.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Horror",style: TextStyle(color: Colors.black),)),
                          Chip(
                              avatar:Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SvgPicture.asset("assets/icons/Thriller.svg"),
                              ),
                              backgroundColor: Colors.yellow[200],
                              shape: StadiumBorder(),
                              label: Text("Thriller",style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/icons/SRK.jpg"))),
                ),
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/icons/SRK.jpg"))),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text("S's location",style: TextStyle(color: Colors.black38,fontSize: 16),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text("Aurangabad, Maharashtra",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Chip(
                          avatar: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image.asset("assets/icons/img.icons8.com.png"),
                          ),
                          backgroundColor: Colors.yellow[200],
                          shape: StadiumBorder(),
                          label: Text("Lives in Aurangabad, MH",style: TextStyle(color: Colors.black),)),
                      SizedBox(height: 20,),
                      Center(child: SvgPicture.asset("assets/icons/Star.svg",height: 80,)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/icons/cross.svg",height: 65,),
                            SvgPicture.asset("assets/icons/tick.svg",height: 65,),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Center(child: Text("Hide and Report",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                      SizedBox(height: 15,),

                    ],
                  ),
                ),
                Container(
                  height: 70,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100]
                    ),
                    child: Center(child: Text("Recommend to a friend",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
