import 'package:flutter/material.dart';

import '../sections/beranda_section.dart';
import '../sections/profil_section.dart';
import '../sections/pemerintahan_section.dart';
import '../sections/pelayanan_section.dart';
import '../sections/dokumentasi_section.dart';
import '../sections/kontak_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // =====================================================
  // SCROLL CONTROLLER
  // =====================================================

  final ScrollController _scrollController = ScrollController();

  // =====================================================
  // GLOBAL KEY SETIAP SECTION
  // =====================================================

  final GlobalKey _berandaKey = GlobalKey();
  final GlobalKey _profilKey = GlobalKey();
  final GlobalKey _pemerintahanKey = GlobalKey();
  final GlobalKey _pelayananKey = GlobalKey();
  final GlobalKey _dokumentasiKey = GlobalKey();
  final GlobalKey _kontakKey = GlobalKey();

  // =====================================================
  // FUNGSI SCROLL KE SECTION
  // =====================================================

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

  // =====================================================
  // DISPOSE
  // =====================================================

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // =====================================================
  // MENU BUTTON
  // =====================================================

  Widget menuButton(String title, GlobalKey key) {
    return TextButton(
      onPressed: () {
        // Jika menu Beranda ditekan
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

  // =====================================================
  // BUILD
  // =====================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =================================================
      // APP BAR / NAVBAR
      // =================================================
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 2,

        title: const Text(
          "Kecamatan Sungai Aur Nagari Ranah Air Haji",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        actions: [
          menuButton("Beranda", _berandaKey),

          menuButton("Profil", _profilKey),

          menuButton("Pemerintahan", _pemerintahanKey),

          menuButton("Pelayanan", _pelayananKey),

          // =============================================
          // MENU DOKUMENTASI
          // =============================================
          menuButton("Dokumentasi", _dokumentasiKey),

          menuButton("Kontak", _kontakKey),

          const SizedBox(width: 20),
        ],
      ),

      // =================================================
      // ISI WEBSITE
      // =================================================
      body: SingleChildScrollView(
        controller: _scrollController,

        child: Column(
          children: [
            // =============================================
            // 1. BERANDA
            // =============================================
            BerandaSection(
              key: _berandaKey,

              onLearnMore: () {
                scrollToSection(_profilKey);
              },
            ),

            // =============================================
            // 2. PROFIL NAGARI
            // =============================================
            ProfilSection(key: _profilKey),

            // =============================================
            // 3. PEMERINTAHAN
            // =============================================
            PemerintahanSection(key: _pemerintahanKey),

            // =============================================
            // 4. PELAYANAN
            // =============================================
            PelayananSection(key: _pelayananKey),

            // =============================================
            // 5. DOKUMENTASI
            // =============================================
            DokumentasiSection(key: _dokumentasiKey),

            // =============================================
            // 6. KONTAK
            // =============================================
            KontakSection(key: _kontakKey),
          ],
        ),
      ),
    );
  }
}
