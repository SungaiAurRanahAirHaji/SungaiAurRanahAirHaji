import 'package:flutter/material.dart';

class PelayananSection extends StatelessWidget {
  const PelayananSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: Column(
        children: [
          // ==========================================
          // JUDUL
          // ==========================================
          const Text(
            "Pelayanan Nagari",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "Informasi pelayanan administrasi "
            "Kecamatan Sungai Aur Nagari Ranah Air Haji",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.black54),
          ),

          const SizedBox(height: 45),

          // ==========================================
          // 1. SURAT KETERANGAN DOMISILI
          // ==========================================
          _PelayananCard(
            icon: Icons.home,
            title: "Surat Keterangan Domisili",
            description:
                "Surat keterangan yang menerangkan bahwa "
                "seseorang bertempat tinggal atau berdomisili "
                "di wilayah Nagari Sungai Aur Ranah Air Haji.",
            requirements: const [
              "Fotokopi Kartu Keluarga (KK)",
              "Fotokopi KTP",
              "Pengantar Jorong",
              "SKCK",
            ],
          ),

          const SizedBox(height: 25),

          // ==========================================
          // 2. SURAT KETERANGAN MENINGGAL DUNIA
          // ==========================================
          _PelayananCard(
            icon: Icons.volunteer_activism,
            title: "Surat Keterangan Meninggal Dunia",
            description:
                "Surat keterangan yang menerangkan bahwa "
                "seseorang telah meninggal dunia sesuai "
                "dengan data dan keterangan yang berlaku.",
            requirements: const [
              "Fotokopi Kartu Keluarga (KK)",
              "Fotokopi KTP",
              "Pengantar Jorong",
            ],
          ),

          const SizedBox(height: 25),

          // ==========================================
          // 3. SURAT KETERANGAN KURANG MAMPU
          // ==========================================
          _PelayananCard(
            icon: Icons.description,
            title: "Surat Keterangan Kurang Mampu",
            description:
                "Surat keterangan yang menerangkan bahwa "
                "seseorang atau keluarga termasuk dalam"
                " kategori kurang mampu dalam ekonomi.",
            requirements: const [
              "Fotokopi Kartu Keluarga (KK)",
              "Fotokopi KTP",
              "Pengantar Jorong",
            ],
          ),

          const SizedBox(height: 25),

          // ==========================================
          // 4. SURAT KETERANGAN
          // ==========================================
          _PelayananCard(
            icon: Icons.child_friendly,
            title: "Surat Keterangan",
            description:
                "Surat keterangan yang menerangkan suatu "
                "keadaan, identitas, atau informasi tertentu"
                " sesuai dengan kebutuhan pemohon.",
            requirements: const [
              "Fotokopi Kartu Keluarga (KK)",
              "Fotokopi KTP",
              "Pengantar Jorong",
            ],
          ),

          const SizedBox(height: 25),

          // ==========================================
          // 5. SURAT AHLI WARIS
          // ==========================================
          _PelayananCard(
            icon: Icons.child_friendly,
            title: "Surat Ahli Waris",
            description:
                "Surat keterangan yang menerangkan mengenai "
                "ahli waris yang sah berdasarkan hubungan"
                " keluarga dan ketentuan yang berlaku",
            requirements: const [
              "Fotokopi Kartu Keluarga (KK)",
              "Fotokopi KTP orang tua",
              "Pengatar Jorong",
            ],
          ),

          const SizedBox(height: 25),

          // ==========================================
          // 6. SURAT KETERANGAN BERKELAKUAN BAIK
          // ==========================================
          _PelayananCard(
            icon: Icons.child_friendly,
            title: "Surat Keterangan Berkelakuan Baik",
            description:
                "Surat keterangan yang menerangkan bahwa"
                " seseorang berkelakuan baik dan tidak pernah"
                " melakukan tindakan yang bertentangan dengan norma.",
            requirements: const [
              "Fotokopi Kartu Keluarga (KK)",
              "Fotokopi KTP",
              "Pengantar Jorong",
            ],
          ),

          const SizedBox(height: 25),

          // ==========================================
          // 7. AKTA KELAHIRAN
          // ==========================================
          _PelayananCard(
            icon: Icons.child_friendly,
            title: "Surat Akta Kelahiran",
            description:
                "Surat pengantar yang digunakan sebagai"
                " persyaratan dalam pengurusan penerbitan"
                " Akta Kelahiran di instansi yang berwenang.",
            requirements: const [
              "Surat keterangan kelahiran dari bidan",
              "Buku nikah",
              "KK asli "
                  "Fotocopy KTP",
            ],
          ),

          const SizedBox(height: 25),

          // ==========================================
          // 8. SURAT KETERANGAN USAHA
          // ==========================================
          _PelayananCard(
            icon: Icons.person_off,
            title: "Surat Keterangan Usaha",
            description:
                "Surat keterangan yang menerangkan bahwa "
                "seseorang memiliki atau menjalankan suatu"
                " usaha di wilayah Nagari Sungai Aur Ranah Air Haji.",
            requirements: const [
              "Fotokopi Kartu Keluarga (KK)",
              "Fotokopi KTP",
              "Pengantar Jorong ",
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// ==================================================
// CARD PELAYANAN
// ==================================================

class _PelayananCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final List<String> requirements;

  const _PelayananCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.requirements,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ======================================
            // JUDUL PELAYANAN
            // ======================================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: Colors.green, size: 30),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ======================================
            // DESKRIPSI
            // ======================================
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 20),

            // ======================================
            // PERSYARATAN
            // ======================================
            const Text(
              "Persyaratan:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 12),

            // ======================================
            // DAFTAR PERSYARATAN
            // ======================================
            ...requirements.map((requirement) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 20,
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Text(
                        requirement,
                        style: const TextStyle(fontSize: 15, height: 1.4),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
