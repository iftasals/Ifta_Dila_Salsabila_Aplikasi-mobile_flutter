import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> movies = const [
    {
      "title": "Inside Out 2",
      "weekday": "Rp45.000",
      "weekend": "Rp60.000",
    },
    {
      "title": "Jumbo",
      "weekday": "Rp50.000",
      "weekend": "Rp70.000",
    },
    {
      "title": "Minion",
      "weekday": "Rp35.000",
      "weekend": "Rp50.000",
    },
    {
      "title": "Frozen 2",
      "weekday": "Rp40.000",
      "weekend": "Rp55.000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
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
                  // Logo dan Judul Navbar
                  Row(
                    children: const [
                      Icon(Icons.movie, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Text(
                        "Daftar Film Bioskop",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),

                  // Tombol Home
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                      size: 28,
                    ),
                    tooltip: "Kembali ke Beranda",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Jadwal dan Harga Tiket",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A148C),
              ),
            ),
            const SizedBox(height: 40),

            // Tabel Data Film
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEDE7F6),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: DataTable(
                headingRowColor: WidgetStateProperty.all(
                  const Color(0xFFD1C4E9),
                ),
                columnSpacing: 60,
                columns: const [
                  DataColumn(
                    label: Text(
                      "Judul Film",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A148C),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Harga Weekday",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A148C),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Harga Weekend",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A148C),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
                rows: movies
                    .map(
                      (movie) => DataRow(
                        color: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                            if (movies.indexOf(movie) % 2 == 0) {
                              return const Color(0xFFF3E5F5);
                            }
                            return const Color(0xFFEDE7F6);
                          },
                        ),
                        cells: [
                          DataCell(
                            Text(
                              movie["title"]!,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              movie["weekday"]!,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              movie["weekend"]!,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),

            const SizedBox(height: 60),

            // Footer
            Center(
              child: Column(
                children: const [
                  Divider(thickness: 1, color: Color(0xFFB39DDB)),
                  SizedBox(height: 10),
                  Text(
                    "© 2025 Flutter Web Bioskop",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
