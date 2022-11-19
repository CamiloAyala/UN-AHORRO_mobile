// Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> storeStringValue({ required String key, required String value }) async {
    await _storage.write(key: key, value: value);
  }

  Future<void> storeIntValue({ required String key, required int value }) async {
    await _storage.write(key: key, value: value.toString());
  }

  Future<String?> getStringValue({ required String key }) async {
    return await _storage.read(key: key);
  }

  Future<int?> getIntValue({ required String key }) async {
    String? value = await _storage.read(key: key);
    return value != null ? int.parse(value) : null;
  }

  Future<void> deleteValue({ required String key }) async {
    await _storage.delete(key: key);
  }
}
  
