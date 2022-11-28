import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class skillDateialpage extends StatefulWidget {
  skillDateialpage(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<skillDateialpage> createState() => _skillDateialpageState();
}

class _skillDateialpageState extends State<skillDateialpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
