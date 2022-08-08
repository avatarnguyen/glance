import 'package:firebase_storage/firebase_storage.dart';
import 'package:glance/core/glance_core.dart';

abstract class StorageDatasource {
  Stream<dynamic> watchDataChanges();
  Future<void> createData(Map<String, dynamic> data);
  Future<List<Map<String, dynamic>>> getData();
  Future<void> deleteData(String id);
  Future<void> updateData(Map<String, dynamic> data);
}

class CloudStorageDatasource implements StorageDatasource {
  final FirebaseStorage firebaseStorage;
  final _log = logger(CloudStorageDatasource);

  CloudStorageDatasource(this.firebaseStorage);

  @override
  Future<void> createData(Map<String, dynamic> data) {
    // TODO: implement createData
    throw UnimplementedError();
  }

  @override
  Future<void> deleteData(String id) {
    // TODO: implement deleteData
    throw UnimplementedError();
  }

  @override
  Future<void> updateData(Map<String, dynamic> data) {
    // TODO: implement updateData
    throw UnimplementedError();
  }

  @override
  Stream watchDataChanges() {
    // TODO: implement watchDataChanges
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, dynamic>>> getData() {
    // TODO: implement getData
    throw UnimplementedError();
  }
}
