import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // ===== Profile Card =====
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05), // ✅ Fixed
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    // Profile Image
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=400&fit=crop',
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Name
                    const Text(
                      'Rj Rana',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),

                    // Subtitle
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),

                    // Bio
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Passionate about creating user-friendly and engaging digital experiences.',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Divider
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 12),

                    // Contact Info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.email_outlined,
                            size: 18, color: Colors.grey),
                        const SizedBox(width: 8),
                        const Text('Rjrana.bhola@gmail.com',
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.phone_outlined,
                            size: 18, color: Colors.grey),
                        const SizedBox(width: 8),
                        const Text('+8801408757808',
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF5B4FC4),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(120, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Follow'),
                        ),
                        const SizedBox(width: 12),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black87,
                            minimumSize: const Size(120, 45),
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Message'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // ===== Interests Section =====
            const Text(
              'Interests',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            // Cards Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: _buildInterestCard(
                      imageUrl:
                      'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400&h=300&fit=crop',
                      title: 'Travel',
                      description: 'Exploring new places around the world',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildInterestCard(
                      imageUrl:
                      'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=400&h=300&fit=crop',
                      title: 'Photography',
                      description: 'Capturing moments through the lens',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestCard({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05), // ✅ Fixed
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF5B4FC4),
                      side: const BorderSide(color: Color(0xFF5B4FC4)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('View More'),
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