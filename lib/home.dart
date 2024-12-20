import 'package:absen/chackin.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

String? selectedGender;
List<SimpanData> dataList = [];
String a = "";

TextEditingController tNim = TextEditingController();
TextEditingController tNama = TextEditingController();
TextEditingController tjenisKelamin = TextEditingController();
TextEditingController tKeterangan = TextEditingController();

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('albani ganteng',
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 31, 45),
                              fontWeight: FontWeight.bold)),
                      Text('panji gumilang',
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 31, 45),
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 3, 167, 60),
              ),
              child: Column(
                children: [
                  const Text(
                    'performance',
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 31, 45),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Look your performance',
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 31, 45),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                        ),
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                        ),
                        Container(
                          height: 90,
                          width: 70,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Text('.....'),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Live Attendance',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 5, 31, 45),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    // height: 270,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            controller: tNim,
                            validator: ((value) {
                              return null;
                            }),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Nim')
                            //isi
                            ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                            controller: tNama,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Nama')
                            //isi
                            ),
                        const SizedBox(height: 10),
                        ListTile(
                          title: const Text('Perempuan'),
                          leading: Radio(
                            value: 'Perempuan',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                                a = selectedGender!;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Laki-Laki'),
                          leading: Radio(
                            value: 'Laki-Laki',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                                a = selectedGender!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                            controller: tKeterangan,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Keterangan')
                            //isi
                            ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.green),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CHACKIN()),
                                    );
                                  },
                                  child: const Text(
                                    'CHACK IN',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (tNim.text == '' ||
                  tNama.text == '' ||
                  tKeterangan.text == '') {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Lengkapi data anda')));
              }
              setState(() {
                SimpanData simpan = SimpanData();
                simpan.setNim = tNim.text;
                simpan.setNama = tNama.text;
                simpan.setKeterangan = tKeterangan.text;
                simpan.setJenis = a;
                dataList.add(simpan);
              });
            },
            child: const Icon(
              Icons.add,
              size: 20,
            )));
  }
}

class SimpanData {
  late String Nim;
  late String Nama;
  late String JenisKelamin;
  late String jenis;
  late String Keterangan;
  // late String TanggalHariBulan;

  String get getNim => Nim;
  String get getNama => Nama;
  String get getJenisKelamin => JenisKelamin;
  String get getJenis => jenis;
  String get getKeterangan => Keterangan;
  // String get getTanggalHariBulan => TanggalHariBulan;

  set setNim(String val) => Nim = val;
  set setNama(String val) => Nama = val;
  set setJenisKleamin(String val) => JenisKelamin = val;
  set setJenis(String val) => jenis = val;
  set setKeterangan(String val) => Keterangan = val;
  // set setTanggalHariBulan(String val) => TanggalHariBulan = val;
}
