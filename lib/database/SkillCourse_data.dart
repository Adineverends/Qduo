import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:qduo/database/StorageMethods.dart';
import 'package:uuid/uuid.dart';

class SkillData {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> skilldata({
    required String SkillName,
    required String CompanyName,
    required String SubCategory,
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
      if (SkillName.isNotEmpty ||
              CompanyName.isNotEmpty ||
              SubCategory.isNotEmpty ||
              BuyingDate.isNotEmpty ||
              ExpyringDate.isNotEmpty ||
              PaymentMethod.isNotEmpty ||
              OrignalPrice.isNotEmpty ||
              SellingPrice.isNotEmpty ||
              Description.isNotEmpty
              || file != null

          ) {
        UploadTask uploadTask= FirebaseStorage.instance.ref().child('COmpanyLogo').child(Uuid().v1()).putFile(file);

        //   String photourl = await StorageMethods()
        //        .uploadImageToStorage('CompanyLogoFile', file, false);

        TaskSnapshot snapshot= await uploadTask;
        String downloadurl=await snapshot.ref.getDownloadURL();

        await _firestore.collection('SkillCourses').add({
          'SkillName':SkillName,
          'CompanyName': CompanyName,
          'Subcategory':SubCategory,
          'Buyingdate': BuyingDate,
          'CourseEndingDate': ExpyringDate,
          'PaymentMethod': PaymentMethod,
          'OrignalPrice': OrignalPrice,
          'SellingPrice': SellingPrice,
          'Description': Description,
              'Photourl': downloadurl
        });

        res = 'success';
      }
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}
