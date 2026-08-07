import 'package:flutter/material.dart';

import '../sections/beranda_section.dart';
import '../sections/profil_section.dart';
import '../sections/pemerintahan_section.dart';
import '../sections/pelayanan_section.dart';
import '../sections/kontak_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _berandaKey = GlobalKey();
  final GlobalKey _profilKey = GlobalKey();
  final GlobalKey _pemerintahanKey = GlobalKey();
  final GlobalKey _pelayananKey = GlobalKey();
  final GlobalKey _kontakKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        alignment: 0.05,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget menuButton(String title, GlobalKey key) {
    return TextButton(
      onPressed: () {
        if (key == _berandaKey) {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 700),
            curve: Curves.easeInOut,
          );
        } else {
          scrollToSection(key);
        }
      },

      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 2,
        title: const Text(
          "Nagari Sungai Aur Ranah Air Haji",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          menuButton("Beranda", _berandaKey),
          menuButton("Profil", _profilKey),
          menuButton("Pemerintahan", _pemerintahanKey),
          menuButton("Pelayanan", _pelayananKey),
          menuButton("Kontak", _kontakKey),
          const SizedBox(width: 20),
        ],
      ),

      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            BerandaSection(
              key: _berandaKey,
              onLearnMore: () {
                scrollToSection(_profilKey);
              },
            ),

            ProfilSection(key: _profilKey),

            PemerintahanSection(key: _pemerintahanKey),

            PelayananSection(key: _pelayananKey),

            KontakSection(key: _kontakKey),
          ],
        ),
      ),
    );
  }
}
