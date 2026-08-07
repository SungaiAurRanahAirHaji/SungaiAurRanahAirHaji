import 'package:flutter/material.dart';

class ProfilSection extends StatelessWidget {
  const ProfilSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ==========================================
          // JUDUL PROFIL
          // ==========================================
          const Center(
            child: Text(
              "Profil Nagari",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),

          const SizedBox(height: 50),

          // ==========================================
          // SEJARAH NAGARI
          // ==========================================
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.history_edu, color: Colors.green, size: 30),

                      SizedBox(width: 10),

                      Text(
                        "Sejarah Nagari",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Text(
                    "📌 Sebelum 2017\n"
                    "Wilayah Ranah Air Haji merupakan bagian dari Nagari Sungai Aur.\n\n"
                    "📌 Tahun 2017\n"
                    "Resmi menjadi Nagari Persiapan hasil pemekaran Nagari Sungai Aur.\n\n"
                    "📌 Tahun 2023\n"
                    "Resmi menjadi Nagari Definitif dan mulai mengelola pemerintahan serta dana nagari secara mandiri.\n\n"
                    "📌 Saat Ini\n"
                    "Memiliki dua jorong yaitu Jorong Air Haji dan Jorong Air Haji Selatan.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 17, height: 1.7),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 35),

          // ==========================================
          // INFORMASI NAGARI
          // ==========================================
          const Text(
            "Informasi Nagari",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LUAS WILAYAH
              Expanded(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Icon(Icons.map, color: Colors.green, size: 45),

                        SizedBox(height: 15),

                        Text(
                          "Luas Wilayah",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "69.708 Hektare",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Nagari Sungai Aur Ranah Air Haji",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 20),

              // JUMLAH PENDUDUK
              Expanded(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Icon(Icons.people, color: Colors.green, size: 45),

                        SizedBox(height: 15),

                        Text(
                          "Jumlah Penduduk",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "4.057 Jiwa",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Data penduduk Nagari",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 35),

          // ==========================================
          // VISI
          // ==========================================
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.visibility, color: Colors.green, size: 30),

                      SizedBox(width: 10),

                      Text(
                        "Visi",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Berkualitas, Mandiri dan Sejahtera: Mewujudkan kehidupan masyarakat nagari yang maju, berdaya saing, mandiri secara ekonomi, dan hidup sejahtera",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 17, height: 1.7),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 35),

          // ==========================================
          // MISI
          // ==========================================
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.flag, color: Colors.green, size: 30),

                      SizedBox(width: 10),

                      Text(
                        "Misi",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text(
                      "Meningkatkan Pembangunan: Mengoptimalkan pembangunan fisik dan non-fisik secara merata di seluruh kejorongan.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text(
                      "Penguatan Ekonomi: Mengembangkan potensi lokal dan Badan Usaha Milik Nagari (BUMNAG) untuk kesejahteraan warga.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text(
                      "Tata Kelola Pemerintahan: Menjalankan pelayanan publik yang transparan, akuntabel, dan profesional di tingkat nagari.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
