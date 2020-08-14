import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Read extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('파일 읽기')),
      body: Container(
        child: FutureBuilder(
          future: loadAsset('lib/assets/schedules/pknu/pknu_cult.txt'),
          builder: (context, snapshot) {
            final contents = snapshot.data.toString();
            final rows = contents.split('\n');

            var tableRows = <TableRow>[];
            for (int i = 0; i < rows.length; i++) {
              var string = stringParser(rows[i]);
              var row = string.map((e) => Text(e)).toList();
              tableRows.add(TableRow(children: row));
            }
            return Table(
              children: tableRows,
            );
          },
        ),
      ),
    );
  }

  Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  List<String> stringParser(String s) {
    var string = s.split(',');

    for (int i = 0; i < string.length; i++) {
      if (string[i].isEmpty) {
        string.removeAt(i);
        i--;
      }
    }

    return string;
  }
}
