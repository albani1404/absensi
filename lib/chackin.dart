
import 'package:absen/edit.dart';
import 'package:absen/home.dart';
import 'package:flutter/material.dart';

class CHACKIN extends StatefulWidget {
  const CHACKIN({super.key});

  @override
  State<CHACKIN> createState() => _CHACKINState();
}

class _CHACKINState extends State<CHACKIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < dataList.length; i++)
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const edit()));
                  },
                  isThreeLine: true,
                  title: Text(dataList[i].getNim),
                  subtitle: Text(
                      '${dataList[i].getNama} \n${dataList[i].getJenis} \n${dataList[i].getKeterangan} '),
                ),
              ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
