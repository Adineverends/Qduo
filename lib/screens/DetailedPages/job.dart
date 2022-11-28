import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class jobDetailPage extends StatefulWidget {
  jobDetailPage(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<jobDetailPage> createState() => _jobDetailPageState();
}

class _jobDetailPageState extends State<jobDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
