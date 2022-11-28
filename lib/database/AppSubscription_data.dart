import 'dart:io';

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:qduo/database/StorageMethods.dart';
import 'package:uuid/uuid.dart';

class AppSubscription {
 

 final CollectionReference ref = FirebaseFirestore.instance.collection('AppSubscription');
  Future<String> appSubscription({
    required String AppCategory,
    required String AppName,
    required String BuyingDate,
    required String ExpyringDate,
    required String PaymentMethod,
    required String OrignalPrice,
    required String SellingPrice,
    required String Description,
    required File file,
  }) async {
    String res = 'Some error ocurred';
    try {
      if (AppCategory.isNotEmpty ||
          AppName.isNotEmpty ||
          BuyingDate.isNotEmpty ||
          ExpyringDate.isNotEmpty ||
          PaymentMethod.isNotEmpty ||
          OrignalPrice.isNotEmpty ||
          SellingPrice.isNotEmpty ||
          Description.isNotEmpty ||
          file != null) {
        UploadTask uploadTask = FirebaseStorage.instance
            .ref()
            .child('COmpanyLogo')
            .child(Uuid().v1())
            .putFile(file);

        //   String photourl = await StorageMethods()
        //        .uploadImageToStorage('CompanyLogoFile', file, false);

        TaskSnapshot snapshot = await uploadTask;
        String downloadurl = await snapshot.ref.getDownloadURL();

      await ref.add({
        
          'AppCategory': AppCategory,
          'AppName': AppName,
          'Buyingdate': BuyingDate,
          'CourseEndingDate': ExpyringDate,
          'PaymentMethod': PaymentMethod,
          'OrignalPrice': OrignalPrice,
          'SellingPrice': SellingPrice,
          'Description': Description,
          'Photourl': downloadurl,
        });

        res = 'success';
      }
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}
