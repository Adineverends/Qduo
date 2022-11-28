import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


Widget appitemCard(Function()? onTap,QueryDocumentSnapshot doc){
  return InkWell(
    onTap: onTap,
    child:Container(
    
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
            height:86 ,
           
              decoration: BoxDecoration(
        color: Color.fromARGB(255, 173, 175, 76),
        borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)),
        image: DecorationImage(image: NetworkImage(doc['Photourl']),fit: BoxFit.cover)
      ),
          ),



          
 SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                                                "Rs " +
                                                  doc
                                                        ['OrignalPrice'],
                                                style: TextStyle(
                                                  fontSize: 22,
                                                )),
                                                 Text(
                                              doc['AppName'],
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                            doc['AppCategory'],
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                           
                                      
                                    
                                            
              ],
            ),
          )
        ],
      ),
    )
  );
}