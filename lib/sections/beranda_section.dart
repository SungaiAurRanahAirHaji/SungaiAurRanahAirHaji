import 'package:flutter/material.dart';

class BerandaSection extends StatelessWidget {
  final VoidCallback onLearnMore;

  const BerandaSection({super.key, required this.onLearnMore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 70),
      child: Column(
        children: [
          // ======================================
          // FOTO KANTOR
          // ======================================
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/kantor.jpeg",
              width: 900,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 40),

          // ======================================
          // JUDUL
          // ======================================
          const Text(
            "Selamat Datang",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Website Resmi Nagari Sungai Aur Ranah Air Haji",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 35),

          // ======================================
          // SAMBUTAN
          // ======================================
          Container(
            constraints: const BoxConstraints(maxWidth: 900),
            child: const Text(
              "Assalamu'alaikum Warahmatullahi Wabarakatuh.\n\n"
              "Selamat datang di Website Profil Nagari Sungai Aur Ranah Air Haji. "
              "Website ini dibuat sebagai media informasi resmi yang menyajikan "
              "profil nagari, pemerintahan, pelayanan administrasi, serta informasi "
              "lain yang dapat diakses oleh masyarakat dengan mudah.\n\n"
              "Kami berharap website ini dapat menjadi sarana komunikasi yang baik "
              "antara pemerintah nagari dan masyarakat serta memberikan manfaat bagi "
              "seluruh pengunjung.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, height: 1.8),
            ),
          ),

          const SizedBox(height: 45),

          // ======================================
          // TOMBOL
          // ======================================
          ElevatedButton.icon(
            onPressed: onLearnMore,
            icon: const Icon(Icons.arrow_downward),
            label: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "Pelajari Lebih Lanjut",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 50),

          // ======================================
          // GARIS PEMBATAS
          // ======================================
          Divider(color: Colors.green.shade300, thickness: 1),
        ],
      ),
    );
  }
}
