import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    void redirectTo(String url) async {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    }

    final size = MediaQuery.of(context).size;

return Scaffold(
  backgroundColor: const Color(0xFFF9FAFB),
  body: SingleChildScrollView(
    child: Column(
      children: [
        // ===== HEADER SECTION =====
        Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 104, 154, 168), Color.fromARGB(255, 108, 110, 108)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Gawandeep Kaur",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color.fromARGB(255, 17, 16, 16),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Flutter Developer • UI/UX Enthusiast",
                  style: TextStyle(
                    color: Color.fromARGB(179, 34, 34, 34),
                    fontSize: 16,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 30),
                // Profile card
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Hi, I'm Gawandeep 👋",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 33, 32, 32),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "I build beautiful, performant cross-platform apps with Flutter.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color.fromARGB(179, 23, 23, 23), fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 15,
                        runSpacing: 10,
                        alignment: WrapAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () =>
                                Navigator.pushReplacementNamed(context, '/resume'),
                            icon: const Icon(Icons.file_copy_outlined),
                            label: const Text("View Resume"),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 14),
                              backgroundColor: const Color.fromARGB(255, 29, 29, 29),
                              foregroundColor: const Color.fromARGB(255, 215, 214, 218),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          OutlinedButton.icon(
                            onPressed: () =>
                                Navigator.pushReplacementNamed(context, '/project'),
                            icon: const Icon(Icons.auto_awesome),
                            label: const Text("View Projects"),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 14),
                              side: const BorderSide(color: Color.fromARGB(255, 27, 26, 26)),
                              foregroundColor: const Color.fromARGB(255, 24, 23, 23),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () =>
                                redirectTo('https://www.linkedin.com'),
                            icon: const Icon(Icons.link),
                            color: const Color.fromARGB(255, 38, 37, 37),
                          ),
                          IconButton(
                            onPressed: () =>
                                redirectTo('https://www.instagram.com'),
                            icon: const Icon(Icons.camera_alt_outlined),
                            color: const Color.fromARGB(255, 22, 21, 21),
                          ),
                          IconButton(
                            onPressed: () =>
                                redirectTo('https://www.facebook.com'),
                            icon: const Icon(Icons.facebook),
                            color: const Color.fromARGB(255, 27, 26, 26),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // ===== ABOUT SECTION =====
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 104, 154, 168),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "✨ About Me",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 18, 19, 18),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "I’m a passionate Flutter Developer focused on crafting smooth and visually engaging user experiences. I love working with clean UI design, efficient state management, and modern mobile architecture.\n\nI enjoy collaborating on innovative projects, learning cutting-edge technologies, and continuously improving my design and coding skills to create apps people love to use.",
                style: TextStyle(
                  fontSize: 17,
                  height: 1.7,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
        ),

        // ===== CONTACT SECTION =====
        Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 104, 154, 168), Color.fromARGB(255, 108, 110, 108)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "📬 Get in Touch",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 19, 19, 19),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 32, 32).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.phone, color: Color.fromARGB(255, 22, 22, 22)),
                        SizedBox(width: 10),
                        Text(
                          "+91 981xxxxx",
                          style: TextStyle(color: Color.fromARGB(255, 28, 27, 27), fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: () => redirectTo('mailto:gawandeep123@gmail.com'),
                      child: const Row(
                        children: [
                          Icon(Icons.email_outlined, color: Color.fromARGB(255, 26, 25, 25)),
                          SizedBox(width: 10),
                          Text(
                            "gawandeep123@gmail.com",
                            style: TextStyle(
                              color: Color.fromARGB(255, 35, 35, 35),
                              fontSize: 18,
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Center(
                child: Text(
                  "Let’s collaborate and bring your ideas to life 🚀",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(179, 41, 40, 40),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),

        // ===== FOOTER =====
        Container(
          width: double.infinity,
          color: Color.fromARGB(255, 104, 154, 168),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: const Center(
            child: Text(
              "© 2025 Gawandeep Kaur • Crafted with Flutter 💜",
              style: TextStyle(color: Color.fromARGB(179, 41, 40, 40), fontSize: 14,fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    ),
  ),
);

  }
}
