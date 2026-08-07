import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class KontakSection extends StatelessWidget {
  const KontakSection({super.key});

  // ==================================================
  // FUNGSI MEMBUKA LINK MEDIA SOSIAL
  // ==================================================

  Future<void> bukaLink(String url) async {
    final Uri link = Uri.parse(url);

    await launchUrl(link, webOnlyWindowName: '_blank');
  }

  Future<void> bukaMaps() async {
    final Uri url = Uri.parse(
      "https://maps.google.com/?q=Kantor+Wali+Nagari+Sungai+Aur+Ranah+Air+Haji",
    );

    await launchUrl(url, webOnlyWindowName: '_blank');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),

      child: Column(
        children: [
          // ==================================================
          // JUDUL KONTAK
          // ==================================================
          const Text(
            "Kontak",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "Hubungi Pemerintah Nagari Sungai Aur Ranah Air Haji",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),

          const SizedBox(height: 50),

          // ==================================================
          // KARTU KONTAK
          // ==================================================
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==================================================
              // ALAMAT
              // ==================================================
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(30),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 3),
                        color: Colors.black12,
                      ),
                    ],
                  ),

                  child: const Column(
                    children: [
                      Icon(Icons.location_on, size: 45, color: Colors.green),

                      SizedBox(height: 20),

                      Text(
                        "Alamat",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        "Kantor Wali Nagari\n"
                        "Sungai Aur Ranah Air Haji\n"
                        "Kecamatan Sungai Aur\n"
                        "Kabupaten Pasaman Barat\n"
                        "Sumatera Barat",
                        textAlign: TextAlign.center,

                        style: TextStyle(fontSize: 16, height: 1.6),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 25),

              // ==================================================
              // NOMOR HP
              // ==================================================
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(30),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 3),
                        color: Colors.black12,
                      ),
                    ],
                  ),

                  child: const Column(
                    children: [
                      Icon(Icons.phone, size: 45, color: Colors.green),

                      SizedBox(height: 20),

                      Text(
                        "Nomor HP",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        "082164393385",
                        textAlign: TextAlign.center,

                        style: TextStyle(fontSize: 17, height: 1.6),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 25),

              // ==================================================
              // EMAIL
              // ==================================================
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(30),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 3),
                        color: Colors.black12,
                      ),
                    ],
                  ),

                  child: const Column(
                    children: [
                      Icon(Icons.email, size: 45, color: Colors.green),

                      SizedBox(height: 20),

                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        "nagariranahairhaji@gmail.com",
                        textAlign: TextAlign.center,

                        style: TextStyle(fontSize: 16, height: 1.6),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),

          // ==================================================
          // MEDIA SOSIAL
          // ==================================================
          const Text(
            "Media Sosial",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Ikuti media sosial Nagari Sungai Aur Ranah Air Haji",
            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),

          const SizedBox(height: 25),

          // ==================================================
          // TOMBOL INSTAGRAM & TIKTOK
          // ==================================================
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ==================================================
              // INSTAGRAM
              // ==================================================
              InkWell(
                onTap: () {
                  bukaLink("https://www.instagram.com/nagariranahairhaji/");
                },

                borderRadius: BorderRadius.circular(15),

                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 18,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 3),
                        color: Colors.black12,
                      ),
                    ],
                  ),

                  child: const Row(
                    children: [
                      Icon(Icons.camera_alt, size: 30, color: Colors.green),

                      SizedBox(width: 12),

                      Text(
                        "Instagram",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 25),

              // ==================================================
              // TIKTOK
              // ==================================================
              InkWell(
                onTap: () {
                  bukaLink("https://www.tiktok.com/@nagariranahairhaji");
                },

                borderRadius: BorderRadius.circular(15),

                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 18,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 3),
                        color: Colors.black12,
                      ),
                    ],
                  ),

                  child: const Row(
                    children: [
                      Icon(Icons.music_note, size: 30, color: Colors.green),

                      SizedBox(width: 12),

                      Text(
                        "TikTok",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),

          // ==================================================
          // INFORMASI
          // ==================================================
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),

            child: const Column(
              children: [
                Icon(Icons.info_outline, color: Colors.green, size: 35),

                SizedBox(height: 15),

                Text(
                  "Informasi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),

                Text(
                  "Untuk informasi lebih lanjut mengenai "
                  "pelayanan administrasi nagari, masyarakat "
                  "dapat menghubungi Kantor Wali Nagari "
                  "Sungai Aur Ranah Air Haji.",

                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          const Text(
            "Lokasi Kantor Nagari",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 20),

          InkWell(
            onTap: bukaMaps,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 600,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Icon(Icons.location_on, size: 60, color: Colors.red),

                  SizedBox(height: 15),

                  Text(
                    "Lihat Lokasi di Google Maps",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Klik untuk membuka lokasi Kantor Wali Nagari Sungai Aur Ranah Air Haji",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 60),

          Divider(color: Colors.grey, thickness: 1),

          const SizedBox(height: 30),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.green.shade700,
              borderRadius: BorderRadius.circular(15),
            ),

            child: const Column(
              children: [
                Icon(Icons.account_balance, color: Colors.white, size: 55),

                SizedBox(height: 15),

                Text(
                  "Nagari Sungai Aur Ranah Air Haji",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Website Resmi Profil Nagari",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),

                SizedBox(height: 20),

                Divider(color: Colors.white38, thickness: 1),

                SizedBox(height: 20),

                Text(
                  "© 2026 Nagari Sungai Aur Ranah Air Haji",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Dikembangkan oleh ",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),

                SizedBox(height: 5),

                const Text(
                  "Rea Taruci",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Mahasiswi KKN UIN Imam Bonjol Padang",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Kelompok KKN Nagari Sungai Aur Ranah Air Haji",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.white, size: 18),

                    SizedBox(width: 6),

                    Text(
                      "Pasaman Barat, Sumatera Barat",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
