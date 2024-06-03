abstract class PrefsData {
  Future<String?> readData(String key);

  Future writeData(String key, String data);

  Future deleteData(String key);
  Future nuke();

  Future<bool> contains(String key);
}
