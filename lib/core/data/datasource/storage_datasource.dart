import 'package:firebase_storage/firebase_storage.dart';
import 'package:glance/core/glance_core.dart';

abstract class StorageDatasource {
  Stream<dynamic> watchDataChanges();
  Future<void> createData();
  Future<void> getData();
  Future<void> deleteData();
  Future<void> updateData();
}

class CloudStorageDatasource implements StorageDatasource {
  final FirebaseStorage firebaseStorage;
  final _log = logger(CloudStorageDatasource);

  CloudStorageDatasource(this.firebaseStorage);

  @override
  Future<void> createData() {
    // TODO: implement createData
    throw UnimplementedError();
  }

  @override
  Future<void> deleteData() {
    // TODO: implement deleteData
    throw UnimplementedError();
  }

  @override
  Future<void> getData() {
    // TODO: implement getData
    throw UnimplementedError();
  }

  @override
  Future<void> updateData() {
    // TODO: implement updateData
    throw UnimplementedError();
  }

  @override
  Stream watchDataChanges() {
    // TODO: implement watchDataChanges
    throw UnimplementedError();
  }
}
