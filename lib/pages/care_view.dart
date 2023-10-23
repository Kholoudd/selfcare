import 'package:flutter/material.dart';

class Care_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuary = MediaQuery.of(context).size;
    return Container(
      color: Color(0xffE4E7EC),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/flower.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "AliceCare",
                  style: theme.textTheme.titleLarge,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: Color(0xffE4E7EC),
                  width: 1.0,
                ),
              ),
              prefixIcon: Icon(Icons.search),
              labelText: 'Artical , Videos , Audio and more',
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12)),
                    child: Text(
                      "Discover",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12)),
                    child: Text(
                      "News",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12)),
                    child: Text(
                      "Most Viewed",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12)),
                    child: Text(
                      "Saved",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  "Hot Topices",
                  style: theme.textTheme.bodyLarge,
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "see more",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: Color(0xff9D76C1)),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Color(0xff9D76C1),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset("assets/images/frame1.png"),
                      SizedBox(width: 5),
                      Image.asset("assets/images/Frame2.png"),
                    ],
                  ))),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Text("Get Tips", style: theme.textTheme.bodyLarge),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffEAECF5)),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/doctor.png',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("connected with doctors ",
                        style: theme.textTheme.bodyMedium),
                    Text("& get suggestions",
                        style: theme.textTheme.bodyMedium),
                    SizedBox(
                      height: 10,
                    ),
                    Text("connect now & ", style: theme.textTheme.bodySmall),
                    Text("get expert insights",
                        style: theme.textTheme.bodySmall),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff7F56D9),
                        ),
                        child: Text("View Details",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            )))
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Cycel Phases and Period",
                  style: theme.textTheme.bodyLarge,
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "see more",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: Color(0xff9D76C1)),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Color(0xff9D76C1),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
