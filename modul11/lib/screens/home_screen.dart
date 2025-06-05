import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/cart_model.dart';
import '../models/item.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Item> availableItems = [
    Item(id: 1, name: "Beras", price: 50000),
    Item(id: 2, name: "Gula", price: 25000),
    Item(id: 3, name: "Tepung", price: 5000),
    Item(id: 4, name: "Bumbu dapur", price: 15000),
    Item(id: 5, name: "Minyak", price: 15000),
    Item(id: 6, name: "Susu", price: 20000), // Item baru
    Item(id: 7, name: "Telur", price: 30000), // Item baru
    Item(id: 8, name: "Kopi", price: 40000), // Item baru
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("F Mart"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: availableItems.length,
        itemBuilder: (context, index) {
          final item = availableItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(
              NumberFormat.currency(
                locale: 'id_ID',
                symbol: 'Rp',
                decimalDigits: 0,
              ).format(item.price),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                // Menambahkan item ke keranjang
                Provider.of<CartModel>(context, listen: false).add(item);

                // Menampilkan Snackbar konfirmasi
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "${item.name} berhasil ditambahkan ke keranjang!",
                    ),
                    duration: Duration(seconds: 2), // Durasi 2 detik
                    behavior: SnackBarBehavior.floating, // Floating snackbar
                    backgroundColor: Colors.green, // Warna hijau untuk sukses
                  ),
                );
              },
              child: const Text("Tambah"),
            ),
          );
        },
      ),
    );
  }
}
