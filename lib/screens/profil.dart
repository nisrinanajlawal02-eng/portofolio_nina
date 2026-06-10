import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi Warna Tema Portofolio
    const primaryColor = Color(0xFF6366F1); // Indigo
    const backgroundColor = Color(0xFF0F172A); // Slate Dark
    const cardColor = Color(0xFF1E293B); // Lighter Slate

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('My Portfolio', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // --- SECTION 1: PROFIL UTAMA ---
              const SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: primaryColor, width: 4),
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor.withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      "assets/images/gambar.jpg",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                      // Handler jika gambar gagal dimuat
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 120,
                          width: 120,
                          color: cardColor,
                          child: const Icon(Icons.person, size: 60, color: Colors.white54),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Nisrina",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "NIM: 11124064",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Database Specialist & Developer",
                  style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              
              const SizedBox(height: 40),
              
              // --- SECTION 2: SKILLS ---
              _buildSectionTitle("Technical Skills"),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  _buildSkillChip("SQL / DDL"),
                  _buildSkillChip("Relational Database"),
                  _buildSkillChip("Flutter / Dart"),
                  _buildSkillChip("Data Analysis"),
                ],
              ),

              const SizedBox(height: 40),

              // --- SECTION 3: FEATURED PROJECT ---
              _buildSectionTitle("Featured Project"),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white.withOpacity(0.05)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.storage_rounded, color: primaryColor, size: 28),
                        SizedBox(width: 12),
                        Text(
                          "Database System 'nisrina'",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Merancang dan mengimplementasikan sistem basis data relasional lengkap menggunakan DDL (Data Definition Language). Proyek ini mencakup pembuatan struktur tabel terintegrasi (seperti tabel Customers dan Orders), pengelolaan Primary & Foreign Keys, manipulasi data (Insert/Delete), serta optimasi query kompleks menggunakan subqueries untuk analisis data yang efektif.",
                      style: TextStyle(color: Colors.grey[400], fontSize: 14, height: 1.5),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget untuk Judul Section
  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  // Helper Widget untuk Badge Skill
  Widget _buildSkillChip(String label) {
    return Chip(
      label: Text(label),
      labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 13),
      backgroundColor: const Color(0xFF1E293B),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.white.withOpacity(0.1)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
    );
  }
}