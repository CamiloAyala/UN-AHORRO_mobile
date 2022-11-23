// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  
  final storage = const FlutterSecureStorage();

  Future<void> storeStringValue({ required String key, required String value }) async {
    await storage.write(
      key: key,
      value: value,
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> storeIntValue({ required String key, required int value }) async {
    await storage.write(
      key: key,
      value: value.toString(),
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> getStringValue({ required String key }) async {
    return await storage.read(
      key: key,
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<int?> getIntValue({ required String key }) async {
    String? value = await storage.read(
      key: key,
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );

    return value != null ? int.parse(value) : null;
  }

  Future<void> deleteValue({ required String key }) async {
    await storage.delete(
      key: key,
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  IOSOptions _getIOSOptions() => const IOSOptions();

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );


}
  
