import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class appDetailPage extends StatefulWidget {
  appDetailPage(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<appDetailPage> createState() => _appDetailPageState();
}

class _appDetailPageState extends State<appDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Product Details'),
              SizedBox(
                height: 10,
              ),
              Text(widget.doc['AppName']),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.doc['AppCategory']),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.doc['Description']),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.doc['Buyingdate']),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.doc['CourseEndingDate']),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.doc['OrignalPrice']),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.doc['SellingPrice']),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
