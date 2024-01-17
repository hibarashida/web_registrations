import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  void adddetails() {
    String id = DateTime.now().millisecondsSinceEpoch.toString();
    HashMap<String, Object> map = HashMap();
    map["NAME"] = namecontroller.text.toString();
    map["NUMBER"] = phonenumbercontroller.text.toString();
    db.collection("DETAILS").doc(id).set(map);
    notifyListeners();
  }
}
