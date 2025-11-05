import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5), // Latar belakang ungu pastel lembut
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFB39DDB),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.movie_filter, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Text(
                        "MyBioskop",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),

        
                  IconButton(
                    onPressed: () {
                    },
                    icon: const Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                    tooltip: "Kontak",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 800;

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFF3E5F5), Color(0xFFEDE7F6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
            child: isWide
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // TEKS
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Selamat Datang di Bioskop XY",
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6A1B9A),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Rasakan pengalaman menonton film terbaik dengan suasana nyaman dan harga bersahabat. "
                              "Nikmati berbagai pilihan film dari yang lucu, menegangkan, hingga mengharukan, semua ada di sini!",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                height: 1.6,
                              ),
                            ),
                            const SizedBox(height: 30),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF9575CD),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                // ignore: deprecated_member_use
                                shadowColor: Colors.deepPurple.withOpacity(0.3),
                                elevation: 5,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              icon: const Icon(Icons.local_movies,
                                  color: Colors.white),
                              label: const Text(
                                "Lihat Daftar Film",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 60),

                      // GAMBAR
                      Expanded(
                        flex: 1,
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/4221/4221419.png',
                          height: 400,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  )

                // MODE MOBILE
                : SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/4221/4221419.png',
                          height: 250,
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Selamat Datang di Bioskop XY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF6A1B9A),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Rasakan pengalaman menonton film terbaik dengan suasana nyaman dan harga bersahabat. "
                            "Nikmati berbagai pilihan film dari yang lucu, menegangkan, hingga mengharukan – semua ada di sini!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              height: 1.6,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF9575CD),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 14,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          icon: const Icon(Icons.local_movies,
                              color: Colors.white),
                          label: const Text(
                            "Lihat Daftar Film",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
