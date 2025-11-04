import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  void redirectTo(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===== HEADER =====
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 104, 154, 168),
                    Color.fromARGB(255, 108, 110, 108)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(context, '/home'),
                      child: Text(
                        "Gawandeep Kaur",
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Flutter Developer • UI/UX Enthusiast",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        letterSpacing: 0.8,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "📄 Resume",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ===== EXPERIENCE =====
            _buildSection(
              title: "💼 Experience",
              content:
                  "As a beginner, I’m eager to start my professional journey in software development. Though I have no formal work experience yet, I’ve built a strong foundation in Flutter and Dart through self-learning and personal projects.\n\nI’m passionate about applying my skills, growing as a developer, and contributing to impactful real-world applications with creative and efficient solutions.",
            ),

            // ===== EDUCATION =====
            _buildSection(
              title: "🎓 Education",
              content:
                  "• Matriculation – Saint Paul High School\n  Percentage: 86%\n\n• Senior Secondary – Senior Secondary School\n  Percentage: 93%\n\n• Graduation – Punjabi University, Patiala\n  SGPA: 8.0",
            ),

            // ===== SKILLS =====
            _buildSection(
              title: "🛠️ Skill Set",
              content:
                  "• Flutter\n• Dart\n• C++\n• Web Development\n• Firebase (Basic)\n• UI/UX Design Principles",
            ),

            // ===== CONTACT =====
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 104, 154, 168),
                    Color.fromARGB(255, 108, 110, 108)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "📞 Contact Info",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 25),
                  _buildContactRow(Icons.phone, "+91 981xxxxx"),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () => redirectTo('mailto:gawandeep123@gmail.com'),
                    child: _buildContactRow(Icons.email_outlined, "gawandeep123@gmail.com"),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => redirectTo('https://www.linkedin.com'),
                        icon: const Icon(Icons.link),
                        color: Colors.black87,
                      ),
                      IconButton(
                        onPressed: () => redirectTo('https://www.instagram.com'),
                        icon: const Icon(Icons.camera_alt_outlined),
                        color: Colors.black87,
                      ),
                      IconButton(
                        onPressed: () => redirectTo('https://www.facebook.com'),
                        icon: const Icon(Icons.facebook),
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ===== FOOTER =====
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 104, 154, 168),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Center(
                child: Text(
                  "© 2025 Gawandeep Kaur • Built with Flutter 💜",
                  style: TextStyle(
                    color: Color.fromARGB(179, 41, 40, 40),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable section card
  Widget _buildSection({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87)),
            const SizedBox(height: 15),
            Text(
              content,
              style: const TextStyle(
                fontSize: 17,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Contact Row Widget
  Widget _buildContactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.black87),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
