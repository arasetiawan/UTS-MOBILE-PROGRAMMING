import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'PROFIL MAHASISWA';
    return MaterialApp(
      title: appTitle,
       home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
            ImageSection(
            image: 'images/ara.jpg',
            ),
            TitleSection(
              name: 'NAMA : ARA SETIAWAN | STI202102283',
              location: 
              'ALAMAT: DUKUHBENDA, KECAMATAN BUMIJAWA, KABUPATEN TEGAL',
            ),
            TextSection(
description:
'ara setiawan adalah mahasiswa aktif STMIK WIDYA UTAMA PURWOKWERTO '
'semester 6 dan sedang mengikuti ujian tengah semester, '
'ini salah satu tugas yang di berikan oleh dosen mobile programming '
'yaitu membuat profile menggunakan flutter '
'alhamdulillah pengerjaan tugas telah selesai '
'walaupun banyak kendala dalam pengerjaannya. ',
),
            ]
          ),
        ),
      ),
    );
  }
}
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 200,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('6'),
        ],
      ),
    );
  }
}
class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}