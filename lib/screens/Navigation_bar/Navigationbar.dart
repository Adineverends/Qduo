import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qduo/screens/Forms/App_subscription.dart';
import 'package:qduo/screens/Forms/COmpetetive_exams.dart';
import 'package:qduo/screens/Forms/CampusPlacment.dart';
import 'package:qduo/screens/Forms/Skill_course.dart';
import 'package:qduo/screens/Forms/Software_subscription.dart';
import 'package:qduo/screens/Navigation_pages/account.dart';
import 'package:qduo/screens/Navigation_pages/chats.dart';
import 'package:qduo/screens/Navigation_pages/home/HomeScreen.dart';


import 'package:qduo/screens/Navigation_pages/my_add.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class Navigationbar extends StatefulWidget {
  const Navigationbar({Key? key}) : super(key: key);

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int _currentIndex = 0;
  List<Widget> pages = const [HomeScreen(), Chats(), adds(), account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(_currentIndex),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 9, 5, 241),
              Color.fromARGB(255, 73, 73, 190)
            ])),
        child: FloatingActionButton(
          child: Icon(FontAwesomeIcons.circlePlus),
          backgroundColor: Colors.transparent,
          onPressed: () {
            setState(() {
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Color.fromARGB(255, 219, 225, 241),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)),
                  builder: (BuildContext context) {
                    return Container(
                      height: 700,
                      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Select Product Category'),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 340,
                            width: 400,
                            //  color: Colors.red,

                            child: GridView(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                //   mainAxisSpacing: 30
                              ),
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      COmptetiveExam()));
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 242, 100, 147),
                                                    Color.fromARGB(
                                                        255, 255, 164, 194),
                                                    Color.fromARGB(
                                                        255, 235, 94, 141)
                                                  ]),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            radius: 43,
                                            backgroundColor: Colors.transparent,
                                           // backgroundImage: AssetImage(''),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Competive\n     Exam')
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() async{
                                       Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      Skill_course()));
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 242, 100, 147),
                                                    Color.fromARGB(
                                                        255, 255, 164, 194),
                                                    Color.fromARGB(
                                                        255, 235, 94, 141)
                                                  ]),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            radius: 43,
                                            backgroundColor: Colors.transparent,
                                    //        backgroundImage: AssetImage(''),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text('Skill devlopment\n     Courses')
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                       Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                    Campus_placement()));
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 242, 100, 147),
                                                    Color.fromARGB(
                                                        255, 255, 164, 194),
                                                    Color.fromARGB(
                                                        255, 235, 94, 141)
                                                  ]),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            radius: 43,
                                            backgroundColor: Colors.transparent,
                                    //        backgroundImage: AssetImage(''),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Campus\nPlacement')
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                        Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                  Software_subscription()));
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 242, 100, 147),
                                                    Color.fromARGB(
                                                        255, 255, 164, 194),
                                                    Color.fromARGB(
                                                        255, 235, 94, 141)
                                                  ]),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            radius: 43,
                                            backgroundColor: Colors.transparent,
                                   //         backgroundImage: AssetImage(''),
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
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                        Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      App_subscription()));
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 242, 100, 147),
                                                    Color.fromARGB(
                                                        255, 255, 164, 194),
                                                    Color.fromARGB(
                                                        255, 235, 94, 141)
                                                  ]),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            radius: 43,
                                            backgroundColor: Colors.transparent,
                                   //         backgroundImage: AssetImage(''),
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
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  });
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(FontAwesomeIcons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.messenger), label: 'chats'),
          NavigationDestination(
              icon: Icon(FontAwesomeIcons.rectangleAd), label: 'my add'),
          NavigationDestination(
              icon: Icon(FontAwesomeIcons.userLarge), label: 'Account'),
        ],
      ),
    );
  }
}
