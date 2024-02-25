import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseMethods {
  Future addEmpDetails(Map<String, dynamic> EmpInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(EmpInfoMap);
  }
  Future<Stream<QuerySnapshot>> getEmpDetails()async{
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }
}
