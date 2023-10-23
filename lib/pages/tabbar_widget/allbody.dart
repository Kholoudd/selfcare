import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEAECF5)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12),
                      ),
                      child: Text(
                        "7 days",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("morning yoga ", style: theme.textTheme.bodyLarge),
                    SizedBox(
                      height: 10,
                    ),
                    Text("improve mental fouces",
                        style: theme.textTheme.bodySmall),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.access_time_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30 mins", style: theme.textTheme.bodySmall)
                    ])
                  ],
                ),
                Image.asset(
                  'assets/images/workout1.png',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEAECF5)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12),
                      ),
                      child: Text(
                        "3 days",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Plank Express", style: theme.textTheme.bodyLarge),
                    SizedBox(
                      height: 10,
                    ),
                    Text("improve posture and stability",
                        style: theme.textTheme.bodySmall),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.access_time_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30 mins", style: theme.textTheme.bodySmall)
                    ])
                  ],
                ),
                Image.asset(
                  'assets/images/workout2.png',
                  fit: BoxFit.cover,
                  width: mediaquery.width / 4,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEAECF5)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12),
                      ),
                      child: Text(
                        "7 days",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("morning yoga ", style: theme.textTheme.bodyLarge),
                    SizedBox(
                      height: 10,
                    ),
                    Text("improve mental fouces",
                        style: theme.textTheme.bodySmall),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.access_time_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30 mins", style: theme.textTheme.bodySmall)
                    ])
                  ],
                ),
                Image.asset('assets/images/workout1.png'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEAECF5)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.black12),
                      ),
                      child: Text(
                        "3 days",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Plank Express", style: theme.textTheme.bodyLarge),
                    SizedBox(
                      height: 10,
                    ),
                    Text("improve posture and stability",
                        style: theme.textTheme.bodySmall),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.access_time_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30 mins", style: theme.textTheme.bodySmall)
                    ])
                  ],
                ),
                Image.asset(
                  'assets/images/workout2.png',
                  fit: BoxFit.cover,
                  width: mediaquery.width / 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
