import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Home_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuary = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Image.asset("assets/images/logo.png",
                width: mediaQuary.width / 10, height: mediaQuary.height / 10),
            SizedBox(
              width: 5,
            ),
            Text(
              "Moody",
              style: theme.textTheme.titleLarge,
            ),
            Spacer(),
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: 10, end: 10),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            )
            // Badge(
            //    badgeContent: Text('1'),
            //    // position: BadgePosition(top: 10, right: 10),
            //   child: IconButton(
            //     icon: Icon(
            //       Icons.notifications_none,
            //       size: 30,
            //       color: Colors.black,
            //     ),
            //     onPressed: () {},
            //   ),
            // )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Hello,", style: theme.textTheme.bodyMedium),
                  Text("Sara Rose", style: theme.textTheme.bodyLarge),
                ],
              ),
              Text("How are you feeling today?",
                  style: theme.textTheme.bodyMedium),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset("assets/images/love.png"),
                        ),
                        Text(
                          "Love",
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset("assets/images/cool.png"),
                        ),
                        Text("cool",
                            style: theme.textTheme.bodyMedium,
                            textAlign: TextAlign.center)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset("assets/images/happy.png"),
                        ),
                        Text("happy",
                            style: theme.textTheme.bodyMedium,
                            textAlign: TextAlign.center)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Image.asset("assets/images/sad.png"),
                        ),
                        Text("Sad",
                            style: theme.textTheme.bodyMedium,
                            textAlign: TextAlign.center)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      "features",
                      style: theme.textTheme.bodyLarge,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "see more",
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: theme.primaryColor),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 20,
                          color: theme.primaryColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: (index, reason) {
                    // Handle carousel slide change);
                  },
                ),
                items: [
                  Container(
                    width: mediaQuary.width,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: theme.colorScheme.onPrimary,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "positive vibes",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Boost your mood",
                                style: theme.textTheme.bodySmall),
                            Text("in positive vibes",
                                style: theme.textTheme.bodySmall),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Icon(Icons.play_circle,
                                  size: 20, color: theme.primaryColor),
                              Text("10 mins", style: theme.textTheme.bodySmall)
                            ])
                          ],
                        ),
                        Image.asset('assets/images/Walking_the_Dog.png'),
                      ],
                    ),
                  ),
                  Container(
                    width: mediaQuary.width,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: theme.colorScheme.onPrimary,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "positive vibes",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Boost your mood",
                                style: theme.textTheme.bodySmall),
                            Text("in positive vibes",
                                style: theme.textTheme.bodySmall),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Icon(Icons.play_circle,
                                  size: 20, color: theme.primaryColor),
                              Text("10 mins", style: theme.textTheme.bodySmall)
                            ])
                          ],
                        ),
                        Image.asset('assets/images/Walking_the_Dog.png'),
                      ],
                    ),
                  ),
                  Container(
                    width: mediaQuary.width,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: theme.colorScheme.onPrimary,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "positive vibes",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Boost your mood",
                                style: theme.textTheme.bodySmall),
                            Text("in positive vibes",
                                style: theme.textTheme.bodySmall),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Icon(Icons.play_circle,
                                  size: 20, color: theme.primaryColor),
                              Text("10 mins", style: theme.textTheme.bodySmall)
                            ])
                          ],
                        ),
                        Image.asset('assets/images/Walking_the_Dog.png'),
                      ],
                    ),
                  ),
                  // Image.asset('assets/images/workout1.png'),
                  // Image.asset("assets/images/workout2.png"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Exercises",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "see more",
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: theme.primaryColor),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 20,
                        color: theme.primaryColor,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F5FF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/think.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Relaxation",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color(0xFFFDF2FA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/yoga.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Meditation",
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFAF5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/speek.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Breating",
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F9FF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 150,
                    child: Row(
                      children: [
                        Image.asset("assets/images/play.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Yoga",
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
