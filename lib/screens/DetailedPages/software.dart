import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class softwaredetailpage extends StatefulWidget {
  softwaredetailpage(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<softwaredetailpage> createState() => _softwaredetailpageState();
}

class _softwaredetailpageState extends State<softwaredetailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
