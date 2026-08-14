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
          // =====================================================
          // JUDUL PROFIL
          // =====================================================
          const Center(
            child: Text(
              "Profil Nagari",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),

          const SizedBox(height: 50),

          // =====================================================
          // SEJARAH NAGARI
          // =====================================================
          _SectionCard(
            icon: Icons.history_edu,
            title: "Sejarah Nagari",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Nagari Ranah Air Haji merupakan salah satu nagari "
                  "yang berada di Kecamatan Sungai Aur, Kabupaten "
                  "Pasaman Barat, Provinsi Sumatera Barat. Wilayah "
                  "Ranah Air Haji pada awalnya dikenal sebagai "
                  "Jorong Air Haji dan merupakan bagian dari Nagari "
                  "Sungai Aur.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, height: 1.7),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Perkembangan wilayah dan kebutuhan penyelenggaraan "
                  "pemerintahan kemudian mendorong terbentuknya "
                  "Nagari Persiapan Ranah Air Haji. Dalam "
                  "perkembangannya, nagari ini kemudian menjadi "
                  "nagari definitif dan mulai menjalankan "
                  "pemerintahan secara mandiri.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, height: 1.7),
                ),

                const SizedBox(height: 35),

                // =================================================
                // TIMELINE
                // =================================================
                const Text(
                  "Perjalanan Pembentukan Nagari",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 25),

                _TimelineItem(
                  tahun: "Sebelum 2017",
                  title: "Bagian dari Nagari Sungai Aur",
                  description:
                      "Wilayah Ranah Air Haji pada awalnya dikenal "
                      "sebagai Jorong Air Haji dan merupakan bagian "
                      "dari Nagari Sungai Aur.",
                  icon: Icons.location_city,
                ),

                _TimelineItem(
                  tahun: "2017",
                  title: "Nagari Persiapan",
                  description:
                      "Ranah Air Haji mulai berdiri sebagai Nagari "
                      "Persiapan hasil pemekaran dari Nagari Sungai Aur. "
                      "Pada masa ini pengelolaan pemerintahan masih "
                      "berada di bawah nagari induk.",
                  icon: Icons.account_balance,
                ),

                _TimelineItem(
                  tahun: "2023",
                  title: "Nagari Definitif",
                  description:
                      "Nagari Ranah Air Haji menjadi nagari definitif. "
                      "Sejak saat itu pengelolaan pemerintahan dan "
                      "dana nagari mulai dikelola secara mandiri.",
                  icon: Icons.verified,
                ),

                _TimelineItem(
                  tahun: "Saat Ini",
                  title: "Perkembangan Wilayah",
                  description:
                      "Nagari Ranah Air Haji memiliki dua jorong, "
                      "yaitu Jorong Air Haji dan Jorong Air Haji Selatan.",
                  icon: Icons.map,
                  last: true,
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

          // =====================================================
          // TOKOH PEMBENTUKAN NAGARI
          // =====================================================
          _SectionCard(
            icon: Icons.groups,
            title: "Tokoh yang Berperan dalam Pembentukan Nagari",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pembentukan dan perkembangan Nagari Ranah Air Haji "
                  "tidak terlepas dari peran berbagai tokoh masyarakat "
                  "yang ikut dalam proses rapat, pemekaran, serta "
                  "perencanaan kehidupan pemerintahan dan adat nagari.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, height: 1.7),
                ),

                const SizedBox(height: 25),

                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return Row(
                        children: const [
                          Expanded(
                            child: _TokohCard(
                              nama: "Haji Abu Saib",
                              keterangan: "Dikenal sebagai Haji PR",
                              icon: Icons.person,
                            ),
                          ),

                          SizedBox(width: 20),

                          Expanded(
                            child: _TokohCard(
                              nama: "Haji Abdul Hadi",
                              keterangan: "Tokoh dalam proses pemekaran",
                              icon: Icons.person,
                            ),
                          ),

                          SizedBox(width: 20),

                          Expanded(
                            child: _TokohCard(
                              nama: "Haji Nasran Manggari Bilang",
                              keterangan: "Dikenal sebagai Bosa",
                              icon: Icons.person,
                            ),
                          ),
                        ],
                      );
                    }

                    return Column(
                      children: const [
                        _TokohCard(
                          nama: "Haji Abu Saib",
                          keterangan: "Dikenal sebagai Haji PR",
                          icon: Icons.person,
                        ),

                        SizedBox(height: 15),

                        _TokohCard(
                          nama: "Haji Abdul Hadi",
                          keterangan: "Tokoh dalam proses pemekaran",
                          icon: Icons.person,
                        ),

                        SizedBox(height: 15),

                        _TokohCard(
                          nama: "Haji Nasran Manggari Bilang",
                          keterangan: "Dikenal sebagai Bosa",
                          icon: Icons.person,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

          // =====================================================
          // ADAT DAN KEHIDUPAN MASYARAKAT
          // =====================================================
          _SectionCard(
            icon: Icons.mosque,
            title: "Adat dan Kehidupan Masyarakat",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    children: [
                      Icon(Icons.auto_awesome, color: Colors.green, size: 40),

                      SizedBox(height: 15),

                      Text(
                        "Adat Basandi Syarak, "
                        "Syarak Basandi Kitabullah",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Adat memiliki hubungan yang erat dengan "
                  "pemerintahan Nagari Ranah Air Haji. Dalam "
                  "pelaksanaan pemerintahan dan berbagai kegiatan "
                  "nagari, unsur adat turut dilibatkan dan berjalan "
                  "secara berkolaborasi dengan pemerintahan nagari.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, height: 1.7),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Adat dan pemerintahan nagari menjadi dua unsur "
                  "yang saling melengkapi dalam kehidupan masyarakat "
                  "untuk menjaga kehidupan sosial dan mencapai "
                  "tujuan bersama.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, height: 1.7),
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

          // =====================================================
          // PERKEMBANGAN MATA PENCAHARIAN
          // =====================================================
          _SectionCard(
            icon: Icons.agriculture,
            title: "Perkembangan Mata Pencaharian",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pada masa dahulu, mayoritas masyarakat Ranah Air "
                  "Haji bermata pencaharian sebagai petani. "
                  "Perkembangan wilayah dan masuknya perkebunan "
                  "kelapa sawit kemudian membawa perubahan terhadap "
                  "mata pencaharian masyarakat.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, height: 1.7),
                ),

                const SizedBox(height: 25),

                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 700) {
                      return Row(
                        children: const [
                          Expanded(
                            child: _PekerjaanCard(
                              icon: Icons.grass,
                              title: "Masa Dahulu",
                              description: "Pertanian",
                            ),
                          ),

                          SizedBox(width: 20),

                          Icon(
                            Icons.arrow_forward,
                            color: Colors.green,
                            size: 30,
                          ),

                          SizedBox(width: 20),

                          Expanded(
                            child: _PekerjaanCard(
                              icon: Icons.agriculture,
                              title: "Perkembangan",
                              description: "Perkebunan",
                            ),
                          ),

                          SizedBox(width: 20),

                          Icon(
                            Icons.arrow_forward,
                            color: Colors.green,
                            size: 30,
                          ),

                          SizedBox(width: 20),

                          Expanded(
                            child: _PekerjaanCard(
                              icon: Icons.eco,
                              title: "Saat Ini",
                              description: "Kelapa Sawit",
                            ),
                          ),
                        ],
                      );
                    }

                    return Column(
                      children: const [
                        _PekerjaanCard(
                          icon: Icons.grass,
                          title: "Masa Dahulu",
                          description: "Pertanian",
                        ),

                        SizedBox(height: 15),

                        Icon(Icons.arrow_downward, color: Colors.green),

                        SizedBox(height: 15),

                        _PekerjaanCard(
                          icon: Icons.agriculture,
                          title: "Perkembangan",
                          description: "Perkebunan",
                        ),

                        SizedBox(height: 15),

                        Icon(Icons.arrow_downward, color: Colors.green),

                        SizedBox(height: 15),

                        _PekerjaanCard(
                          icon: Icons.eco,
                          title: "Saat Ini",
                          description: "Kelapa Sawit",
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

          // =====================================================
          // INFORMASI NAGARI
          // =====================================================
          const Text(
            "Informasi Nagari",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 20),

          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 700) {
                return Row(
                  children: const [
                    Expanded(
                      child: _InfoCard(
                        icon: Icons.map,
                        title: "Luas Wilayah",
                        value: "69.708 Hektare",
                        subtitle: "Nagari Sungai Aur Ranah Air Haji",
                      ),
                    ),

                    SizedBox(width: 20),

                    Expanded(
                      child: _InfoCard(
                        icon: Icons.people,
                        title: "Jumlah Penduduk",
                        value: "4.057 Jiwa",
                        subtitle: "Data penduduk Nagari",
                      ),
                    ),
                  ],
                );
              }

              return const Column(
                children: [
                  _InfoCard(
                    icon: Icons.map,
                    title: "Luas Wilayah",
                    value: "69.708 Hektare",
                    subtitle: "Nagari Sungai Aur Ranah Air Haji",
                  ),

                  SizedBox(height: 20),

                  _InfoCard(
                    icon: Icons.people,
                    title: "Jumlah Penduduk",
                    value: "4.057 Jiwa",
                    subtitle: "Data penduduk Nagari",
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 35),

          // =====================================================
          // VISI
          // =====================================================
          _SectionCard(
            icon: Icons.visibility,
            title: "Visi",
            child: const Text(
              "Berkualitas, Mandiri dan Sejahtera: "
              "Mewujudkan kehidupan masyarakat nagari yang maju, "
              "berdaya saing, mandiri secara ekonomi, dan hidup sejahtera.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, height: 1.7),
            ),
          ),

          const SizedBox(height: 35),

          // =====================================================
          // MISI
          // =====================================================
          _SectionCard(
            icon: Icons.flag,
            title: "Misi",
            child: Column(
              children: const [
                _MisiItem(
                  text:
                      "Meningkatkan Pembangunan: Mengoptimalkan "
                      "pembangunan fisik dan non-fisik secara merata "
                      "di seluruh kejorongan.",
                ),

                _MisiItem(
                  text:
                      "Penguatan Ekonomi: Mengembangkan potensi lokal "
                      "dan Badan Usaha Milik Nagari (BUMNAG) untuk "
                      "kesejahteraan warga.",
                ),

                _MisiItem(
                  text:
                      "Tata Kelola Pemerintahan: Menjalankan pelayanan "
                      "publik yang transparan, akuntabel, dan profesional "
                      "di tingkat nagari.",
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

// =============================================================
// SECTION CARD
// =============================================================

class _SectionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const _SectionCard({
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.green, size: 30),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            child,
          ],
        ),
      ),
    );
  }
}

// =============================================================
// TIMELINE
// =============================================================

class _TimelineItem extends StatelessWidget {
  final String tahun;
  final String title;
  final String description;
  final IconData icon;
  final bool last;

  const _TimelineItem({
    required this.tahun,
    required this.title,
    required this.description,
    required this.icon,
    this.last = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // =======================================================
        // ICON + GARIS
        // =======================================================
        SizedBox(
          width: 55,
          child: Column(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.green, size: 24),
              ),

              if (!last)
                Container(width: 2, height: 85, color: Colors.green.shade200),
            ],
          ),
        ),

        const SizedBox(width: 15),

        // =======================================================
        // ISI TIMELINE
        // =======================================================
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tahun,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// =============================================================
// TOKOH CARD
// =============================================================

class _TokohCard extends StatelessWidget {
  final String nama;
  final String keterangan;
  final IconData icon;

  const _TokohCard({
    required this.nama,
    required this.keterangan,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.green.shade100),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(icon, color: Colors.green, size: 30),
          ),

          const SizedBox(height: 15),

          Text(
            nama,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 7),

          Text(
            keterangan,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

// =============================================================
// PEKERJAAN CARD
// =============================================================

class _PekerjaanCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _PekerjaanCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.green.shade100),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.green, size: 40),

          const SizedBox(height: 10),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 5),

          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================
// INFORMASI CARD
// =============================================================

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String subtitle;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Icon(icon, color: Colors.green, size: 45),

            const SizedBox(height: 15),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================
// MISI ITEM
// =============================================================

class _MisiItem extends StatelessWidget {
  final String text;

  const _MisiItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: const Icon(Icons.check_circle, color: Colors.green),

      title: Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }
}
