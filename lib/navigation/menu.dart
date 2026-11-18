
import 'package:flutter/material.dart';
import 'package:lutfi/navigation/about_page.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  static const Color background = Color(0xFF101419);
  static const Color surface = Color(0xFF191F26);
  static const Color accent = Color(0xFF8AB4F8);
  static const Color secondaryText = Color(0xFF929DAA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(22, 28, 22, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),

              const SizedBox(height: 38),

              const Text(
                'Widget Laboratory',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.8,
                ),
              ),


              const SizedBox(height: 24),

              _buildSectionLabel('MATERI PEMBELAJARAN'),

              const SizedBox(height: 14),

              _buildNavCard(
                number: '01',
                title: 'Latihan Kelompok',
                subtitle: 'Belajar widget bersama tim.',
                icon: Icons.groups_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/latihan_kelompok',
                ),
              ),

              _buildNavCard(
                number: '02',
                title: 'Latihan Mandiri',
                subtitle: 'Praktik komponen dan logika.',
                icon: Icons.person_2_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/latihan_mandiri',
                ),
              ),

              _buildNavCard(
                number: '03',
                title: 'List View',
                subtitle: 'Mengenal daftar dan scrolling.',
                icon: Icons.format_list_bulleted,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/list_view',
                ),
              ),

              _buildNavCard(
                number: '04',
                title: 'Container',
                subtitle: 'Styling, padding, dan decoration.',
                icon: Icons.crop_square_rounded,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/container_widget',
                ),
              ),

              _buildNavCard(
                number: '05',
                title: 'Row & Column',
                subtitle: 'Mengatur posisi dan alignment.',
                icon: Icons.dashboard_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/row_column_widget',
                ),
              ),

              _buildNavCard(
                number: '06',
                title: 'SizedBox & Stack',
                subtitle: 'Spacing dan susunan layer widget.',
                icon: Icons.layers_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/size_box_stack',
                ),
              ),

              _buildNavCard(
                number: '07',
                title: 'Pengaduan',
                subtitle: 'Form pengaduan fasilitas.',
                icon: Icons.mail_outline,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/pages',
                ),
              ),

              _buildNavCard(
                number: '08',
                title: 'Album',
                subtitle: 'My Album.',
                icon: Icons.photo_album_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  '/pages',
                ),
              ),

              const SizedBox(height: 28),

              Center(
                child: Text(
                  'FLUTTER LEARNING PROJECT  •  2026',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.3),
                    fontSize: 10,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withOpacity(0.07),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: accent.withOpacity(0.12),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Center(
              child: Text(
                'A',
                style: TextStyle(
                  color: accent,
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          const SizedBox(width: 14),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ambatukam',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'XII TKR  •  35 Tahun',
                  style: TextStyle(
                    color: secondaryText,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(
                    nama: 'Ambatukam',
                    kelas: 'XII TKR',
                    umur: 35,
                  ),
                ),
              );
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.06),
              foregroundColor: accent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: const Icon(
              Icons.arrow_forward_rounded,
              size: 19,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionLabel(String title) {
    return Row(
      children: [
        Container(
          width: 3,
          height: 14,
          decoration: BoxDecoration(
            color: accent,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(width: 9),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 11,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.3,
          ),
        ),
      ],
    );
  }

  Widget _buildNavCard({
    required String number,
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Material(
        color: surface,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          splashColor: accent.withOpacity(0.08),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 17,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white.withOpacity(0.06),
              ),
            ),
            child: Row(
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    color: Color(0xFF65717F),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(width: 15),

                Container(
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                    color: accent.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    color: accent,
                    size: 22,
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: secondaryText,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.chevron_right_rounded,
                  color: Color(0xFF65717F),
                  size: 21,
                ),
              ],
            ),
          ),


          
        ),
      ),
    );
  }
}
