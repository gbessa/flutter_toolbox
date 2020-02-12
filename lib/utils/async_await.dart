import 'dart:io';

Future<ProcessedData> createData() async {
  final id = await _loadFromDisk();
  final data = await _fetchNetworkData(id);
  return ProcessedData(data);
}

Future<ProcessedData> createDataWithErrorHandle() async {
  try {
    final id = await _loadFromDisk();
    final data = await _fetchNetworkData(id);
    return ProcessedData(data);
  } on HttpException catch (err) {
    print('Network error: $err');
    return ProcessedData.empty();
  } finally {
    print('All done!');
  }
}

Future<int> getTotal(Stream<int> numbers) async {
  int total = 0;

  await for (final value in numbers) {
    total += value;
  }

  return total;
}

class ProcessedData {
  ProcessedData(data);

  static Future<ProcessedData> empty() async {
    return null;
  }
}

_fetchNetworkData(id) {}

_loadFromDisk() {}
