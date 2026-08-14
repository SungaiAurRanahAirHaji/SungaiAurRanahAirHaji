import 'package:flutter/material.dart';

class DokumentasiSection extends StatelessWidget {
  const DokumentasiSection({super.key});

  // ============================================================
  // DATA DOKUMENTASI
  // ============================================================

  static const List<Map<String, dynamic>> kegiatan = [
    {
      'judul': 'Dokumentasi Kegiatan 1',
      'deskripsi':
          'Dokumentasi rumah korban bencana angin puting beliung di Nagari Ranah Air Haji',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_1/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_1/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 2',
      'deskripsi': 'Kegiatan Dasawisma di Nagari Ranah Air Haji',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_2/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_2/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 3',
      'deskripsi':
          'Membantu lansia dalam pengurusan KTP untuk calon penerima BLT',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_3/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_3/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 4',
      'deskripsi':
          'Menerima kunjungan tim penilai PKK provinsi untuk Kelompok dasawisma terbaik di Kabupaten Pasaman Barat yang masuk nominasi di Provinsi Sumatera Barat',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_4/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_4/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 5',
      'deskripsi':
          'Menerima kunjungan tim PKK kabupaten dan dinas perkebunan di Dasawisma jorong Air Haji',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_5/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_5/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 6',
      'deskripsi': 'Menerima laporan dari masyarakat tentang posbankum',
      'foto': ['assets/images/dokumentasi/Kegiatan_6/foto1.jpeg'],
    },
    {
      'judul': 'Dokumentasi Kegiatan 7',
      'deskripsi':
          'Mengikuti acara pelantikan PJ. Wali nagari Ranah Air Haji di Kecamatan Sungai Aur',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_7/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_7/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 8',
      'deskripsi': 'Mengikuti sosialisasi tentang larangan pembakaran lahan',
      'foto': ['assets/images/dokumentasi/Kegiatan_8/foto1.jpeg'],
    },
    {
      'judul': 'Dokumentasi Kegiatan 9',
      'deskripsi': 'Musyawarah pembentukan PPWN Ranah Air Haji',
      'foto': ['assets/images/dokumentasi/Kegiatan_9/foto1.jpeg'],
    },
    {
      'judul': 'Dokumentasi Kegiatan 10',
      'deskripsi':
          'Pembagian bantuan beras dari dinas pangan bekerja sama dengan buloq',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_10/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_10/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 11',
      'deskripsi': 'Penerimaan Anak KKN  UIN Imam Bonjol Padang',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_11/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_11/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 12',
      'deskripsi':
          'Penerimaan berkas pendaftaran calon wali atas nama Sunardi, SH',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_12/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_12/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 13',
      'deskripsi':
          'Penyerahan bantuan bencana alam kepada korban angin puting beliung dari BPBD dan Dinas Sosial Kabupaten',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_13/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_13/foto2.jpeg',
        'assets/images/dokumentasi/Kegiatan_13/foto3.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 14',
      'deskripsi': 'Pertemuan bulanan PKK Nagri Ranah Air Haji',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_14/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_14/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 15',
      'deskripsi':
          'Sosialisasi tentang larangan pembakaran hutan dari PT. Agrowiratama',
      'foto': [
        'assets/images/dokumentasi/Kegiatan_15/foto1.jpeg',
        'assets/images/dokumentasi/Kegiatan_15/foto2.jpeg',
      ],
    },
    {
      'judul': 'Dokumentasi Kegiatan 16',
      'deskripsi':
          'Survei lapangan dengan Inspektorat tentang kegiatan fisik yang ada di Nagari Ranah Air Haji',
      'foto': ['assets/images/dokumentasi/Kegiatan_16/foto1.jpeg'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dokumentasi Kegiatan',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Dokumentasi kegiatan Pemerintahan Nagari Ranah Air Haji',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),

          const SizedBox(height: 35),

          LayoutBuilder(
            builder: (context, constraints) {
              double cardWidth;

              if (constraints.maxWidth >= 1100) {
                cardWidth = (constraints.maxWidth - 30) / 2;
              } else if (constraints.maxWidth >= 700) {
                cardWidth = (constraints.maxWidth - 20) / 2;
              } else {
                cardWidth = constraints.maxWidth;
              }

              return Wrap(
                spacing: 30,
                runSpacing: 30,
                children: kegiatan.map((item) {
                  return SizedBox(
                    width: cardWidth,
                    child: _KegiatanCard(
                      judul: item['judul'] as String,
                      deskripsi: item['deskripsi'] as String,
                      foto: List<String>.from(item['foto']),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ================================================================
// CARD KEGIATAN
// ================================================================

class _KegiatanCard extends StatelessWidget {
  final String judul;
  final String deskripsi;
  final List<String> foto;

  const _KegiatanCard({
    required this.judul,
    required this.deskripsi,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.green.shade300, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            deskripsi,
            style: const TextStyle(fontSize: 17, color: Colors.grey),
          ),

          const SizedBox(height: 20),

          // ======================================================
          // FOTO
          // ======================================================
          LayoutBuilder(
            builder: (context, constraints) {
              double fotoWidth;

              if (foto.length == 1) {
                fotoWidth = constraints.maxWidth;
              } else if (foto.length == 2) {
                fotoWidth = (constraints.maxWidth - 12) / 2;
              } else {
                fotoWidth = (constraints.maxWidth - 24) / 3;
              }

              return Wrap(
                spacing: 12,
                runSpacing: 12,
                children: foto.map((path) {
                  return SizedBox(
                    width: fotoWidth,
                    height: 250,

                    // ==================================================
                    // IMAGE.ASSET
                    // ==================================================
                    child: Image.asset(
                      path,
                      fit: BoxFit.cover,

                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.red.shade50,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.image_not_supported,
                                  size: 45,
                                  color: Colors.red,
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  'Foto tidak ditemukan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  path,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
