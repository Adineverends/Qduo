import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class examdetailPage extends StatefulWidget {
  examdetailPage(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<examdetailPage> createState() => _examdetailPageState();
}

class _examdetailPageState extends State<examdetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
