import 'dart:convert';

import 'dart:io';

class LoadSaveData {
  Future readFiles() async {
    final file = File('data/save_data.txt');
    Stream<String> reads = file
        .openRead()
        .transform(utf8.decoder) // Decode bytes to UTF-8.
        .transform(LineSplitter());
    try {
      await for (var read in reads) {
        print('$read');
        return read;
      }
    } catch (e) {
      print('Error: $e');
      return e;
    }
  }
}
