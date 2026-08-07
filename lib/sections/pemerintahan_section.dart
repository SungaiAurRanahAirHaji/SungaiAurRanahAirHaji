import 'package:flutter/material.dart';

class PemerintahanSection extends StatelessWidget {
  const PemerintahanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: Column(
        children: [
          // ==========================================
          // JUDUL
          // ==========================================
          const Text(
            "Pemerintahan Nagari",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Struktur Organisasi Pemerintahan "
            "Nagari Ranah Air Haji",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.black54),
          ),

          const SizedBox(height: 45),

          // ==========================================
          // PJ. WALI NAGARI
          // ==========================================
          _JabatanCard(
            icon: Icons.account_balance,
            jabatan: "PJ. WALI NAGARI",
            nama: "SAHRIMAR, S.E, M.H",
            utama: true,
          ),

          _GarisVertikal(),

          // ==========================================
          // SEKRETARIS NAGARI
          // ==========================================
          _JabatanCard(
            icon: Icons.person,
            jabatan: "SEKRETARIS NAGARI",
            nama: "ADLIS, SE",
            utama: true,
          ),

          const SizedBox(height: 35),

          // ==========================================
          // PERANGKAT NAGARI
          // ==========================================
          LayoutBuilder(
            builder: (context, constraints) {
              // ========================================
              // TAMPILAN LAPTOP / DESKTOP
              // ========================================

              if (constraints.maxWidth > 800) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ----------------------------------
                    // KIRI
                    // ----------------------------------
                    Expanded(
                      child: Column(
                        children: [
                          _JabatanCard(
                            icon: Icons.account_balance,
                            jabatan: "KASI PEMERINTAHAN",
                            nama: "ERIK COPRIMA, S.Kom",
                          ),

                          _GarisVertikal(),

                          _JabatanCard(
                            icon: Icons.computer,
                            jabatan: "STAF IT",
                            nama: "LIDRA",
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 20),

                    // ----------------------------------
                    // TENGAH
                    // ----------------------------------
                    Expanded(
                      child: Column(
                        children: [
                          _JabatanCard(
                            icon: Icons.people,
                            jabatan: "KASI KESRA & PELAYANAN",
                            nama: "VIVI INDRIANI, SM",
                          ),

                          _GarisVertikal(),

                          _JabatanCard(
                            icon: Icons.person,
                            jabatan: "STAF KESRA & PELAYANAN",
                            nama: "AFNITIA FARISKI, SH",
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 20),

                    // ----------------------------------
                    // KANAN
                    // ----------------------------------
                    Expanded(
                      child: Column(
                        children: [
                          _JabatanCard(
                            icon: Icons.assignment,
                            jabatan: "KAUR UMUM & PERENCANAAN",
                            nama: "SULASTRI, S.Pd",
                          ),

                          _GarisVertikal(),

                          _JabatanCard(
                            icon: Icons.computer,
                            jabatan: "OPERATOR SIPADES",
                            nama: "WAHYU SAPUTERA, S.Sos.I",
                          ),

                          const SizedBox(height: 25),

                          _JabatanCard(
                            icon: Icons.account_balance_wallet,
                            jabatan: "KAUR KEUANGAN",
                            nama: "MARLINDA, S.Pd",
                          ),

                          _GarisVertikal(),

                          _JabatanCard(
                            icon: Icons.computer,
                            jabatan: "OPERATOR SIKUEDES",
                            nama: "NINA SAFITRI, S.Sos",
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }

              // ========================================
              // TAMPILAN HP / LAYAR KECIL
              // ========================================

              return Column(
                children: [
                  _JabatanCard(
                    icon: Icons.account_balance,
                    jabatan: "KASI PEMERINTAHAN",
                    nama: "ERIK COPRIMA, S.Kom",
                  ),

                  _GarisVertikal(),

                  _JabatanCard(
                    icon: Icons.computer,
                    jabatan: "STAF IT",
                    nama: "LIDRA",
                  ),

                  const SizedBox(height: 25),

                  _JabatanCard(
                    icon: Icons.people,
                    jabatan: "KASI KESRA & PELAYANAN",
                    nama: "VIVI INDRIANI, SM",
                  ),

                  _GarisVertikal(),

                  _JabatanCard(
                    icon: Icons.person,
                    jabatan: "STAF KESRA & PELAYANAN",
                    nama: "AFNITIA FARISKI, SH",
                  ),

                  const SizedBox(height: 25),

                  _JabatanCard(
                    icon: Icons.assignment,
                    jabatan: "KAUR UMUM & PERENCANAAN",
                    nama: "SULASTRI, S.Pd",
                  ),

                  _GarisVertikal(),

                  _JabatanCard(
                    icon: Icons.computer,
                    jabatan: "OPERATOR SIPADES",
                    nama: "WAHYU SAPUTERA, S.Sos.I",
                  ),

                  const SizedBox(height: 25),

                  _JabatanCard(
                    icon: Icons.account_balance_wallet,
                    jabatan: "KAUR KEUANGAN",
                    nama: "MARLINDA, S.Pd",
                  ),

                  _GarisVertikal(),

                  _JabatanCard(
                    icon: Icons.computer,
                    jabatan: "OPERATOR SIKUEDES",
                    nama: "NINA SAFITRI, S.Sos",
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 50),

          // ==========================================
          // KEPALA JORONG
          // ==========================================
          const Text(
            "Kepala Jorong",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 25),

          LayoutBuilder(
            builder: (context, constraints) {
              // ========================================
              // DESKTOP
              // ========================================

              if (constraints.maxWidth > 700) {
                return Row(
                  children: [
                    Expanded(
                      child: _JabatanCard(
                        icon: Icons.location_city,
                        jabatan: "KEPALA JORONG AIR HAJI",
                        nama: "SADRIMAN",
                      ),
                    ),

                    const SizedBox(width: 25),

                    Expanded(
                      child: _JabatanCard(
                        icon: Icons.location_city,
                        jabatan: "KEPALA JORONG AIR HAJI SELATAN",
                        nama: "ASRIL JONI",
                      ),
                    ),
                  ],
                );
              }

              // ========================================
              // HP
              // ========================================

              return Column(
                children: [
                  _JabatanCard(
                    icon: Icons.location_city,
                    jabatan: "KEPALA JORONG AIR HAJI",
                    nama: "SADRIMAN",
                  ),

                  const SizedBox(height: 20),

                  _JabatanCard(
                    icon: Icons.location_city,
                    jabatan: "KEPALA JORONG AIR HAJI SELATAN",
                    nama: "PLT. KASI PEMERINTAHAN",
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

// ==================================================
// CARD JABATAN
// ==================================================

class _JabatanCard extends StatelessWidget {
  final IconData icon;
  final String jabatan;
  final String nama;
  final bool utama;

  const _JabatanCard({
    required this.icon,
    required this.jabatan,
    required this.nama,
    this.utama = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.green.shade200, width: 1.5),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          // ========================================
          // ICON
          // ========================================
          Container(
            width: utama ? 55 : 45,
            height: utama ? 55 : 45,
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.green, size: utama ? 30 : 25),
          ),

          const SizedBox(width: 15),

          // ========================================
          // JABATAN & NAMA
          // ========================================
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jabatan,
                  style: TextStyle(
                    fontSize: utama ? 18 : 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade800,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  nama,
                  style: TextStyle(
                    fontSize: utama ? 17 : 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==================================================
// GARIS VERTIKAL
// ==================================================

class _GarisVertikal extends StatelessWidget {
  const _GarisVertikal();

  @override
  Widget build(BuildContext context) {
    return Container(width: 2, height: 25, color: Colors.green.shade300);
  }
}
