import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class KontakSection extends StatelessWidget {
  const KontakSection({super.key});

  // ==================================================
  // FUNGSI MEMBUKA LINK
  // ==================================================

  Future<void> bukaLink(String url) async {
    final Uri link = Uri.parse(url);

    await launchUrl(link, webOnlyWindowName: '_blank');
  }

  // ==================================================
  // TOMBOL MEDIA SOSIAL
  // ==================================================

  Widget tombolSosial({
    required IconData icon,
    required String nama,
    required String url,
  }) {
    return InkWell(
      onTap: () {
        bukaLink(url);
      },
      borderRadius: BorderRadius.circular(15),

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),

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

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 30, color: Colors.green),

            const SizedBox(width: 12),

            Text(
              nama,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
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
            "Hubungi Pemerintah Nagari Ranah Air Haji",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),

          const SizedBox(height: 50),

          // ==================================================
          // KARTU KONTAK
          // ==================================================
          LayoutBuilder(
            builder: (context, constraints) {
              // ==================================================
              // DESKTOP
              // ==================================================

              if (constraints.maxWidth > 800) {
                return Row(
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

                        child: Column(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 45,
                              color: Colors.green,
                            ),

                            const SizedBox(height: 20),

                            const Text(
                              "Alamat",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 15),

                            const Text(
                              "Kantor Wali Nagari\n"
                              "Sungai Aur Ranah Air Haji\n"
                              "Kecamatan Sungai Aur\n"
                              "Kabupaten Pasaman Barat\n"
                              "Sumatera Barat",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, height: 1.6),
                            ),

                            const SizedBox(height: 20),

                            // ==================================================
                            // TOMBOL GOOGLE MAPS
                            // ==================================================
                            InkWell(
                              onTap: () {
                                bukaLink(
                                  "https://www.google.com/maps/search/?api=1&query=Kantor+Wali+Nagari+Ranah+Air+Haji",
                                );
                              },

                              borderRadius: BorderRadius.circular(12),

                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),

                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.map,
                                      color: Colors.white,
                                      size: 22,
                                    ),

                                    SizedBox(width: 8),

                                    Text(
                                      "Lihat di Google Maps",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                );
              }

              // ==================================================
              // HP / LAYAR KECIL
              // ==================================================

              return Column(
                children: [
                  // ALAMAT
                  Container(
                    width: double.infinity,
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

                    child: Column(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 45,
                          color: Colors.green,
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          "Alamat",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 15),

                        const Text(
                          "Kantor Wali Nagari\n"
                          "Sungai Aur Ranah Air Haji\n"
                          "Kecamatan Sungai Aur\n"
                          "Kabupaten Pasaman Barat\n"
                          "Sumatera Barat",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, height: 1.6),
                        ),

                        const SizedBox(height: 20),

                        InkWell(
                          onTap: () {
                            bukaLink(
                              "https://www.google.com/maps/search/?api=1&query=Kantor+Wali+Nagari+Ranah+Air+Haji",
                            );
                          },

                          borderRadius: BorderRadius.circular(12),

                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),

                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                            ),

                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.map, color: Colors.white, size: 22),

                                SizedBox(width: 8),

                                Text(
                                  "Lihat di Google Maps",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // NOMOR HP
                  Container(
                    width: double.infinity,
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

                  const SizedBox(height: 25),

                  // EMAIL
                  Container(
                    width: double.infinity,
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
                ],
              );
            },
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
            "Klik ikon sosial media di bawah untuk informasi lebih lanjut!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),

          const SizedBox(height: 25),

          // ==================================================
          // MEDIA SOSIAL
          // ==================================================
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 25,
            runSpacing: 20,

            children: [
              // INSTAGRAM
              tombolSosial(
                icon: Icons.camera_alt,
                nama: "Instagram",
                url: "https://www.instagram.com/nagariranahairhaji/",
              ),

              // TIKTOK
              tombolSosial(
                icon: Icons.music_note,
                nama: "TikTok",
                url: "https://www.tiktok.com/@nagariranahairhaji",
              ),

              // FACEBOOK
              tombolSosial(
                icon: Icons.facebook,
                nama: "Facebook",
                url: "https://web.facebook.com/ranahairhaji/?_rdc=1&_rdr#",
              ),

              // YOUTUBE
              tombolSosial(
                icon: Icons.play_circle_fill,
                nama: "YouTube",
                url:
                    "https://youtube.com/@ranahairhajiwanipirah?si=iM-CxjPp-XWLex8W",
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

          // ==================================================
          // FOOTER
          // ==================================================
          const Text(
            "Kecamatan Sungai Aur Nagari Ranah Air Haji",
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "Website Profil Nagari",
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),

          const SizedBox(height: 5),

          // ==================================================
          // NAMA PEMBUAT WEBSITE
          // ==================================================
          const Text(
            "Dikembangkan oleh Rea Taruci",
            style: TextStyle(
              fontSize: 13,
              color: Color.fromARGB(250, 239, 56, 5),
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
