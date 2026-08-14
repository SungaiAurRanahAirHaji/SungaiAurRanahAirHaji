import 'package:flutter/material.dart';

class PemerintahanSection extends StatelessWidget {
  const PemerintahanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        children: [
          const Text(
            "Pemerintahan Nagari",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Struktur Organisasi Pemerintahan "
            "Nagari Ranah Air Haji",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.black54),
          ),

          const SizedBox(height: 45),

          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 1100) {
                return const _DesktopStructure();
              }

              return const _MobileStructure();
            },
          ),
        ],
      ),
    );
  }
}

// ============================================================
// DESKTOP
// ============================================================

class _DesktopStructure extends StatelessWidget {
  const _DesktopStructure();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ====================================================
        // PJ WALI NAGARI
        // ====================================================
        const SizedBox(
          width: 380,
          child: _PersonCard(
            jabatan: "PJ. WALI NAGARI",
            nama: ["SAHRIMAR, S.E, M.H"],
            icon: Icons.account_balance,
            utama: true,
          ),
        ),

        // GARIS PJ -> CABANG
        const _VerticalLine(height: 45),

        // ====================================================
        // CABANG UTAMA
        // ====================================================
        _MainBranch(),

        const SizedBox(height: 70),

        // ====================================================
        // KEPALA JORONG
        // ====================================================
        const Text(
          "Kepala Jorong",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),

        const SizedBox(height: 25),

        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _PersonCard(
                jabatan: "KEPALA JORONG AIR HAJI",
                nama: ["SADRIMAN"],
                icon: Icons.location_city,
              ),
            ),

            SizedBox(width: 30),

            Expanded(
              child: _PersonCard(
                jabatan: "KEPALA JORONG AIR HAJI SELATAN",
                nama: ["ASRIL JONI"],
                icon: Icons.location_city,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ============================================================
// CABANG UTAMA
// ============================================================

class _MainBranch extends StatelessWidget {
  const _MainBranch();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ====================================================
        // SEKRETARIS
        // ====================================================
        const SizedBox(
          width: 380,
          child: _PersonCard(
            jabatan: "SEKRETARIS NAGARI",
            nama: ["ADLIS, SE"],
            icon: Icons.person,
            utama: true,
          ),
        ),

        const SizedBox(height: 45),

        // ====================================================
        // BARIS 4 BAGIAN
        // ====================================================
        Stack(
          children: [
            // ================================================
            // GARIS HORIZONTAL
            // ================================================
            Positioned(
              top: 0,
              left: 150,
              right: 150,
              child: Container(height: 3, color: Colors.green.shade700),
            ),

            // ================================================
            // EMPAT CABANG
            // ================================================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // =================================================
                // KASI PEMERINTAHAN
                // =================================================
                Expanded(
                  child: _BranchColumn(
                    showTopLine: true,
                    department: const _PersonCard(
                      jabatan: "KASI PEMERINTAHAN",
                      nama: ["ERIK COPRIMA, S.Kom"],
                      icon: Icons.account_balance,
                    ),
                    child: const _PersonCard(
                      jabatan: "STAF IT",
                      nama: ["LIDRA"],
                      icon: Icons.computer,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // =================================================
                // KASI KESRA
                // =================================================
                Expanded(
                  child: _BranchColumn(
                    showTopLine: true,
                    department: const _PersonCard(
                      jabatan: "KASI KESRA & PELAYANAN",
                      nama: ["ULFI KHAIRANI", "PITRINA"],
                      icon: Icons.people,
                    ),
                    child: const _PersonCard(
                      jabatan: "STAF KESRA & PELAYANAN",
                      nama: ["AFNITIA FARISKI, SH"],
                      icon: Icons.person,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // =================================================
                // KAUR UMUM
                // =================================================
                Expanded(
                  child: _BranchColumn(
                    showTopLine: true,
                    department: const _PersonCard(
                      jabatan: "KAUR UMUM & PERENCANAAN",
                      nama: ["SULASTRI, S.Pd"],
                      icon: Icons.assignment,
                    ),
                    child: const _PersonCard(
                      jabatan: "OPERATOR SIPADES",
                      nama: [
                        "WAHYU SAPUTERA, S.Sos.I",
                        "SYFA ADILLAH",
                        "NUR HIDAYAH",
                      ],
                      icon: Icons.computer,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // =================================================
                // KAUR KEUANGAN
                // =================================================
                Expanded(
                  child: _BranchColumn(
                    showTopLine: true,
                    department: const _PersonCard(
                      jabatan: "KAUR KEUANGAN",
                      nama: ["MARLINDA, S.Pd"],
                      icon: Icons.account_balance_wallet,
                    ),
                    child: const _PersonCard(
                      jabatan: "OPERATOR SIKUEDES",
                      nama: ["NINA SAFITRI, S.Sos"],
                      icon: Icons.computer,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

// ============================================================
// BRANCH COLUMN
// ============================================================

class _BranchColumn extends StatelessWidget {
  final Widget department;
  final Widget child;
  final bool showTopLine;

  const _BranchColumn({
    required this.department,
    required this.child,
    this.showTopLine = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Garis turun dari garis horizontal
        if (showTopLine) const _VerticalLine(height: 28),

        department,

        // Garis dari jabatan ke bawah
        const _VerticalLine(height: 45),

        child,
      ],
    );
  }
}

// ============================================================
// CARD
// ============================================================

class _PersonCard extends StatelessWidget {
  final String jabatan;
  final List<String> nama;
  final IconData icon;
  final bool utama;

  const _PersonCard({
    required this.jabatan,
    required this.nama,
    required this.icon,
    this.utama = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.green.shade300, width: 2),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 7, offset: Offset(0, 4)),
        ],
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ==================================================
          // ICON
          // ==================================================
          Container(
            width: utama ? 70 : 62,
            height: utama ? 70 : 62,
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              size: utama ? 38 : 32,
              color: Colors.green.shade600,
            ),
          ),

          const SizedBox(width: 18),

          // ==================================================
          // TEXT
          // ==================================================
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  jabatan,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: utama ? 22 : 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade800,
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 8),

                ...nama.map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      item,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: utama ? 18 : 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        height: 1.25,
                      ),
                    ),
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

// ============================================================
// GARIS VERTIKAL
// ============================================================

class _VerticalLine extends StatelessWidget {
  final double height;

  const _VerticalLine({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(width: 3, height: height, color: Colors.green.shade700);
  }
}

// ============================================================
// MOBILE
// ============================================================

class _MobileStructure extends StatelessWidget {
  const _MobileStructure();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _PersonCard(
          jabatan: "PJ. WALI NAGARI",
          nama: ["SAHRIMAR, S.E, M.H"],
          icon: Icons.account_balance,
          utama: true,
        ),

        const _VerticalLine(height: 35),

        const _PersonCard(
          jabatan: "SEKRETARIS NAGARI",
          nama: ["ADLIS, SE"],
          icon: Icons.person,
          utama: true,
        ),

        const SizedBox(height: 35),

        const _PersonCard(
          jabatan: "KASI PEMERINTAHAN",
          nama: ["ERIK COPRIMA, S.Kom"],
          icon: Icons.account_balance,
        ),

        const _VerticalLine(height: 30),

        const _PersonCard(
          jabatan: "STAF IT",
          nama: ["LIDRA"],
          icon: Icons.computer,
        ),

        const SizedBox(height: 35),

        const _PersonCard(
          jabatan: "KASI KESRA & PELAYANAN",
          nama: ["ULFI KHAIRANI", "PITRINA"],
          icon: Icons.people,
        ),

        const _VerticalLine(height: 30),

        const _PersonCard(
          jabatan: "STAF KESRA & PELAYANAN",
          nama: ["AFNITIA FARISKI, SH"],
          icon: Icons.person,
        ),

        const SizedBox(height: 35),

        const _PersonCard(
          jabatan: "KAUR UMUM & PERENCANAAN",
          nama: ["SULASTRI, S.Pd"],
          icon: Icons.assignment,
        ),

        const _VerticalLine(height: 30),

        const _PersonCard(
          jabatan: "OPERATOR SIPADES",
          nama: ["WAHYU SAPUTERA, S.Sos.I", "SYFA ADILLAH", "NUR HIDAYAH"],
          icon: Icons.computer,
        ),

        const SizedBox(height: 35),

        const _PersonCard(
          jabatan: "KAUR KEUANGAN",
          nama: ["MARLINDA, S.Pd"],
          icon: Icons.account_balance_wallet,
        ),

        const _VerticalLine(height: 30),

        const _PersonCard(
          jabatan: "OPERATOR SIKUEDES",
          nama: ["NINA SAFITRI, S.Sos"],
          icon: Icons.computer,
        ),

        const SizedBox(height: 50),

        const Text(
          "Kepala Jorong",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),

        const SizedBox(height: 25),

        const _PersonCard(
          jabatan: "KEPALA JORONG AIR HAJI",
          nama: ["SADRIMAN"],
          icon: Icons.location_city,
        ),

        const SizedBox(height: 20),

        const _PersonCard(
          jabatan: "KEPALA JORONG AIR HAJI SELATAN",
          nama: ["ASRIL JONI"],
          icon: Icons.location_city,
        ),
      ],
    );
  }
}
