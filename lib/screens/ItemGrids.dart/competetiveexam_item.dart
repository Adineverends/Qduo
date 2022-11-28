
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qduo/itemcard/appItemcard.dart';
import 'package:qduo/itemcard/exam.dart';
import 'package:qduo/screens/DetailedPages/app.dart';
import 'package:qduo/screens/DetailedPages/exam.dart';
import 'package:qduo/screens/Navigation_pages/home/seeall_items/appSub.dart';

class CompetetiveExam_item extends StatefulWidget {
  const CompetetiveExam_item({Key? key}) : super(key: key);

  @override
  State<CompetetiveExam_item> createState() => _CompetetiveExam_itemState();
}

class _CompetetiveExam_itemState extends State<CompetetiveExam_item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CompetetiveExam Courses'),
          backgroundColor: Color.fromARGB(255, 0, 8, 255),
        ),
        body: Container(
            /*
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('AppSubscription')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final List storedocs = [];
              snapshot.data!.docs.map(
                (DocumentSnapshot documentSnapshot) {
                  Map a = documentSnapshot.data() as Map<String, dynamic>;
                  storedocs.add(a);
                  a['id'] = documentSnapshot.id;
                 
                },
              ).toList();

              return SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      storedocs.length,
                      (index) => InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => appDetailedPage()));
                              });
                            },
                            child: Container(
                              height: 150,
                              margin: EdgeInsets.only(
                                  bottom: 13, left: 16, right: 10, top: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 196, 199, 201),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, right: 1, bottom: 10),
                                child: Row(
                                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 56,
                                      backgroundImage: NetworkImage(
                                          storedocs[index]['Photourl']),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            storedocs[index]['AppName'],
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            storedocs[index]['AppCategory'],
                                            style: TextStyle(
                                              fontSize: 21,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            storedocs[index]
                                                ['CourseEndingDate'],
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                              "Rs " +
                                                  storedocs[index]
                                                      ['OrignalPrice'],
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              );
            }),
      
      
                       */

            child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('CompetetiveExamCourse').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 6,
                     
                      ),
                  children: snapshot.data!.docs
                      .map((detail) => examitemcard(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => examdetailPage(detail)));
                          }, detail))
                      .toList(),
                ),
              );
            }

            return Text("there is no item",
                style: TextStyle(color: Colors.white));
          },
        )));
  }
}

