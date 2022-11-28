import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class skillseeALL extends StatelessWidget {
  const skillseeALL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('SkillCourses')
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
            scrollDirection: Axis.horizontal,
            child: Row(
             // scrollDirection: Axis.horizontal,
              children: List.generate(
                  storedocs.length,
                  (index) => Container(
                    margin: EdgeInsets.only(right: 10),
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 169, 162, 220)
                    ),
                    height: 280,
                    width: 250,
                    child: Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                         
                            decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color: Color.fromARGB(255, 135, 148, 218)
                      ,
                      image: DecorationImage(image: NetworkImage(storedocs[index]['Photourl'],),fit: BoxFit.cover)
                    ),

                    
                        ),
                          Container(
                          height: 150,
                       //   color: Color.fromARGB(255, 155, 165, 222),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text(
                                            storedocs[index]['SkillName'],
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            storedocs[index]['Subcategory'],
                                            style: TextStyle(
                                              fontSize: 21,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            storedocs[index]['CompanyName'],
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            storedocs[index]['CourseEndingDate'],
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
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
                        ),
                      ],
                    )),
                  )
                 
                      ),
                   
                   
                   
                   
                   
                   
                   
            ),
          );
        });
  }
}
