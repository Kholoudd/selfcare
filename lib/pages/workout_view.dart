import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:qize/pages/tabbar_widget/allbody.dart';
import 'package:qize/pages/tabbar_widget/fullbody.dart';
import 'package:qize/pages/tabbar_widget/lower.dart';
import 'package:qize/pages/tabbar_widget/upper.dart';

class Workout_View extends StatefulWidget {
  @override
  State<Workout_View> createState() => _Workout_ViewState();
}

class _Workout_ViewState extends State<Workout_View> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaquary = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset(
                  "assets/images/loggo.png",
                  width: mediaquary.width / 5,
                  height: mediaquary.height / 5,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Jade",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text("Ready to workout?", style: theme.textTheme.bodyLarge)
                ],
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
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF1EFEF),
            ),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/Icon.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Hear Rate ", style: theme.textTheme.bodySmall)
                      ],
                    ),
                    Text(
                      "81PMB",
                      style: theme.textTheme.bodyMedium,
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 2,
                  color: Color(0xFF7D7C7C),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/list.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("To Do", style: theme.textTheme.bodySmall)
                      ],
                    ),
                    Text(
                      "32.5%",
                      style: theme.textTheme.bodyMedium,
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 2,
                  color: Color(0xFF7D7C7C),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/Group.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Hear Rate ", style: theme.textTheme.bodySmall)
                      ],
                    ),
                    Text(
                      "81PMB",
                      style: theme.textTheme.bodyMedium,
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Work Out Program", style: theme.textTheme.bodyLarge),
          ),
          TabBar(
            labelStyle: theme.textTheme.bodySmall,
            labelColor: Color(0xFF363f72),
            unselectedLabelColor: Color(0xFF667085),
            unselectedLabelStyle: theme.textTheme.bodySmall,
            tabs: [
              Tab(
                text: "All type",
              ),
              Tab(
                text: "Full body",
              ),
              Tab(
                text: "Upper",
              ),
              Tab(
                text: "Lower",
              ),
            ],
          ),
          Expanded(
            child: TabBarView(children: [
              AllBody(),
              FullBody(),
              UpperBody(),
              LowerBody(),
            ]),
          ),
        ]),
      ),
    );
  }
}
