import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qduo/screens/DetailedPages/app.dart';
import 'package:qduo/screens/Forms/CampusPlacment.dart';
import 'package:qduo/screens/ItemGrids.dart/Appsub_item.dart';
import 'package:qduo/screens/ItemGrids.dart/PlacementCourse._item.dart';
import 'package:qduo/screens/ItemGrids.dart/SKillCourse_item.dart';
import 'package:qduo/screens/ItemGrids.dart/SoftwareSub.item.dart';
import 'package:qduo/screens/ItemGrids.dart/competetiveexam_item.dart';
import 'package:qduo/screens/Navigation_pages/home/seeall_items/CompetetiveExam.dart';
import 'package:qduo/screens/Navigation_pages/home/seeall_items/SoftwareSub.dart';
import 'package:qduo/screens/Navigation_pages/home/seeall_items/appSub.dart';
import 'package:qduo/screens/Navigation_pages/home/seeall_items/campusJob.dart';
import 'package:qduo/screens/Navigation_pages/home/seeall_items/skillDevlopment.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: const NetworkImage(
        'https://miro.medium.com/max/1400/1*RpaR1pTpRa0PUdNdfv4njA.png',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title:
          'Push your creativity to its limits by reimagining this classic puzzle!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '\$51,046 in prizes',
      rightSubtitle: '4882 participants',
      rightSubtitleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://pbs.twimg.com/profile_banners/1444928438331224069/1633448972/600x200',
      ),
      title: '@coskuncay published flutter_custom_carousel_slider!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '11 Feb 2022',
      rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String name;
    return SafeArea(
        child: Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 70, left: 8, right: 8),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('Hello Kattyperi'),
                    Icon(Icons.handshake) //  hello icon
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text('What are you looking for\ntoday?'),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 214, 212, 212))),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomCarouselSlider(
                  items: itemList,
                  height: 180,
                  subHeight: 50,
                  width: MediaQuery.of(context).size.width * 2,
                  autoplay: true,
                  showText: false,
                  showSubBackground: false,
                  indicatorShape: BoxShape.circle,
                  selectedDotColor: Color.fromARGB(255, 44, 115, 238),
                  unselectedDotColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Choose Your Option To '),
                Text('Buy'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => CompetetiveExam_item()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 4, 3, 27),
                                    width: 3)),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              backgroundImage: AssetImage(
                                'images/examm.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Competetive\nExam')
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) =>skill_item()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 4, 3, 27),
                                    width: 3)),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              backgroundImage: AssetImage(
                                'images/p.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Skill\nDevlopment')
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => placement_item()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 4, 3, 27),
                                    width: 3)),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              backgroundImage: AssetImage(
                                'images/b.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Campus\nPlacement')
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => AppSubscription_item()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 4, 3, 27),
                                    width: 3)),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              backgroundImage: AssetImage(
                                'images/a.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('App\nSubscription')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => AppSubscription_item()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 4, 3, 27),
                                    width: 3)),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              backgroundImage: AssetImage(
                                'images/s.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Software\nSubscription')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Chechout these'),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ComptetiveExamCourses'),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => CompetetiveExam_item()));
                            },
                            child: Text(
                              'Sell all',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                    Container(
                      height: 320,
                      width: double.infinity,
                      child: examseeALL(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('AppSubscription'),
                        TextButton(
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => AppSubscription_item()));
                            },
                            child: Text(
                              'Sell all',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                    Container(
                      height: 310,
                      width: double.infinity,
                      child: appseeALL(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CampusPlacement Courses'),
                        TextButton(
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => placement_item()));
                            },
                            child: Text(
                              'Sell all',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                    Container(
                      height: 310,
                      width: double.infinity,
                      child: jobseeALL(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Software Subscriptions'),
                        TextButton(
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) =>softwareSubscription_Item()));
                            },
                            child: Text(
                              'Sell all',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                    Container(
                      height: 310,
                      width: double.infinity,
                      child: SoftwareseeALL(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Skill Devlopment Courses'),
                        TextButton(
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => skill_item()));
                            },
                            child: Text(
                              'Sell all',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                    Container(
                      height: 310,
                      width: double.infinity,
                      child: skillseeALL(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // here we will add user name
            CircleAvatar(),
            SizedBox(
              width: 80,
            ),
            Text('Qduo'),
            SizedBox(
              width: 180,
            ),
            InkWell(
              
              onTap: (){
              
              },
              child: Icon(Icons.notifications))
          ],
        ),
      ),
    ]));
  }
}
