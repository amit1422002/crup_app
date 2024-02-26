import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseMethods {
  // Create
  Future addEmpDetails(Map<String, dynamic> EmpInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(EmpInfoMap);
  }

  //Read
  Future<Stream<QuerySnapshot>> getEmpDetails()async{
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }

  //Update
  Future updateEmployeeDetail(String id, Map<String, dynamic> updateInfo)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).update(updateInfo);
  }
  //Delete
   Future deleteEmployeeDetail(String id)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).delete();
  }
}
