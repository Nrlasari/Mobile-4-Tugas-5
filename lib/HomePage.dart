import 'package:flutter/material.dart';
import 'package:p5_navigator/DetailPage.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = const [
    {
      'nama': 'Strawberry Cake',
      'harga': 45000,
      'deskripsi':
          'Kue strawberry dengan tekstur lembut, '
          'krim susu dan potongan strawberry segar.',
      'gambar':
          'https://images.unsplash.com/photo-1565958011703-44f9829ba187?w=500',
    },
    {
      'nama': 'Chocolate Cake',
      'harga': 55000,
      'deskripsi':
          'Kue cokelat lembut dengan lapisan krim '
          'cokelat yang manis dan lezat.',
      'gambar':
          'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=500',
    },
    {
      'nama': 'Croissant',
      'harga': 18000,
      'deskripsi':
          'Pastry khas Prancis yang renyah di luar '
          'dan lembut di dalam.',
      'gambar':
          'https://images.unsplash.com/photo-1555507036-ab1f4038808a?w=500',
    },
    {
      'nama': 'Chocolate Donut',
      'harga': 12000,
      'deskripsi':
          'Donat empuk dengan topping cokelat '
          'yang manis dan lezat.',
      'gambar':
          'https://images.unsplash.com/photo-1551024506-0bccd828d307?w=500',
    },
    {
      'nama': 'Cheesecake',
      'harga': 38000,
      'deskripsi':
          'Cheesecake dengan tekstur creamy '
          'dan rasa keju yang lembut.',
      'gambar':
          'https://images.unsplash.com/photo-1533134242443-d4fd215305ad?w=500',
    },
  ];

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.store_mall_directory_rounded),
        title: const Text('Sweet Crumbs Bakery'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFFAF7F2),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return Card(
            color: Colors.white,
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 15),
            child: ListTile(
              contentPadding: const EdgeInsets.all(15),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  p['gambar'],
                  width: 85,
                  height: 85,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 85,
                      height: 85,
                      color: Colors.brown.shade100,
                      child: const Icon(Icons.cake),
                    );
                  },
                ),
              ),
              title: Text(
                p['nama'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF4E342E),
                ),
              ),
              subtitle: Text(
                'Rp ${p['harga']}',
                style: const TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailpage(
                      nama: p['nama'],
                      harga: p['harga'],
                      deskripsi: p['deskripsi'],
                      gambar: p['gambar'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
