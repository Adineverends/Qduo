import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qduo/database/AppSubscription_data.dart';
import 'package:qduo/screens/Navigation_bar/Navigationbar.dart';
import 'package:qduo/screens/Navigation_pages/chats.dart';

class App_subscription extends StatefulWidget {
  const App_subscription({Key? key}) : super(key: key);

  @override
  State<App_subscription> createState() => _App_subscriptionState();
}

class _App_subscriptionState extends State<App_subscription> {
  TextEditingController category = TextEditingController();
  TextEditingController AppName = TextEditingController();

  TextEditingController BuyingDate = TextEditingController();
  TextEditingController ExpyringDate = TextEditingController();
  TextEditingController PaymentMethod = TextEditingController();
  TextEditingController OrignalPrice = TextEditingController();
  TextEditingController SellingPrice = TextEditingController();
  TextEditingController Description = TextEditingController();

  //Uint8List? _companylogo;

  bool isLoading = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    category.dispose();
    AppName.dispose();

    BuyingDate.dispose();
    ExpyringDate.dispose();
    PaymentMethod.dispose();
    OrignalPrice.dispose();
    SellingPrice.dispose();
    Description.dispose();
  }

  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage!.path);
      });
    }
  }

  void PostAdd() async {
    setState(() {
      isLoading = true;
    });
    String res = await AppSubscription().appSubscription(
        AppCategory: category.text,
        AppName: AppName.text,
        BuyingDate: BuyingDate.text,
        ExpyringDate: ExpyringDate.text,
        PaymentMethod: PaymentMethod.text,
        OrignalPrice: OrignalPrice.text,
        SellingPrice: SellingPrice.text,
        Description: Description.text,
        file: _image!);

    setState(() {
      isLoading = false;
    });

    if (res != 'success') {
      //  showSnackBar(res, context);
      print(res);
    }
  }

  //for multiimage

  final ImagePicker imagePicker = ImagePicker();

  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromARGB(255, 219, 225, 241),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 52, 84, 243),
          leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Navigationbar()));
              });
            },
            icon: Icon(FontAwesomeIcons.arrowLeft),
          ),
          title: Text('App_Subscription'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextField(
                controller: category,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('App Category'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                controller: AppName,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('App Name'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Please Provide App Logo!'),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: _openImagePicker,
                child: Container(
                  height: 130,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Color.fromARGB(255, 224, 223, 223),
                      border: Border.all(
                          color: Color.fromARGB(255, 45, 97, 255), width: 2)),
                  child: _image != null
                      ? Image.file(_image!, fit: BoxFit.cover)
                      : Icon(FontAwesomeIcons.camera),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              /*         InkWell(
                onTap: () {
                  setState(()async {
              DateTime? newDate=await   showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(2018),
                        lastDate: DateTime(2022));
                  });
                },
                child: Container(
                  height: 61,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 122, 120, 120)),
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        IconButton(
                          icon:Icon(FontAwesomeIcons.calendar),
                          onPressed: ()async{
                           DateTime? newDate=await  showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(2018),
                        lastDate: DateTime(2022));
                          },
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text('${date.year}/${date.month}/${date.day}')
                      ],
                    ),
                  ),
                ),
              )     */
              TextField(
                controller: BuyingDate,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('Date Of Purchasing the subscription'),
                  hintText: 'dd/mm/yy',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                controller: ExpyringDate,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('Date Of ending of Subscription'),
                  hintText: 'dd/mm/yy',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                controller: PaymentMethod,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('Paid as Emi or Single Payment'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                controller: OrignalPrice,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('orignal Price Of Course'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                controller: SellingPrice,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('Price In which You want to sell'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                controller: Description,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  // hintText: 'Exam Name',
                  label: Text('other Descriptions'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text('Please Give Us somescreenshot \nof ProductAs a Proof'),
              SizedBox(
                height: 14,
              ),
              //      InkWell(
              //        onTap: selectImages,
              //        child: imageFileList!= null
              //            ? Expanded(
              //                child: GridView.builder(
              //                    gridDelegate:
              //                        SliverGridDelegateWithFixedCrossAxisCount(
              //                            crossAxisCount: 2),
              //                    itemBuilder: (BuildContext context, int index) {
              //                      return Image.file(
              //                        File(imageFileList![index].path),
              //                        fit: BoxFit.cover,
              //                      );
              //                    }))
              //            : Icon(Icons.camera),
              //      ),

              InkWell(
                  onTap: selectImages,
                  child: imageFileList != null
                      ? Container(
                          height: 300,
                          width: 300,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (BuildContext context, int index) {
                                return Image.file(
                                  File(imageFileList![index].path),
                                  fit: BoxFit.cover,
                                );
                              }))
                      : Icon(Icons.camera)),

              InkWell(
                onTap: () async {
                  setState(() {
                    PostAdd();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Navigationbar()));
                  });
                },
                child: Container(
                  height: 60,
                  width: 280,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 35),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 9, 5, 241),
                            Color.fromARGB(255, 73, 73, 190),
                            Color.fromARGB(255, 9, 5, 241),
                          ]),
                      borderRadius: BorderRadius.circular(6)),
                  child: isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          'Post Add',
                          style: TextStyle(color: Colors.white),
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ]),
          ),
        ));
  }
}
