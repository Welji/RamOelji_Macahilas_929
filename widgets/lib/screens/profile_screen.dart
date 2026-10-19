import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/cover_photo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.15),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  right: 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _iconButton(Icons.menu),
                      Row(
                        children: [
                          _iconButton(Icons.edit),
                          const SizedBox(width: 8),
                          _iconButton(Icons.search),
                          const SizedBox(width: 8),
                          _iconButton(Icons.more_horiz),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 16,
                  child: _circleIcon(Icons.camera_alt),
                ),
                const Positioned(
                  left: 16,
                  bottom: -42,
                  child: CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage('assets/images/profile_photo.jpg'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 52),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ram Macahilas',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    '1.2K posts • Iloilo City',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1877F2),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text('Add to story'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black87,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text('Edit profile'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _card(
                    child: const Text(
                      'Your profile is private. Only friends can see your posts.',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('AI', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Photos'),
                        Text('Reels'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Personal details',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                  _card(
                    child: Column(
                      children: const [
                        _detailRow(Icons.location_on_outlined, 'Lives in', 'Iloilo City'),
                        SizedBox(height: 12),
                        _detailRow(Icons.home_outlined, 'Address', 'Mandurriao, Iloilo City'),
                        SizedBox(height: 12),
                        _detailRow(Icons.cake_outlined, 'Birthday', 'January 1, 1995'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _iconButton(IconData icon) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.25),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }

  static Widget _circleIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18),
    );
  }

  static Widget _card({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: child,
    );
  }
}

class _detailRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _detailRow(this.icon, this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 22, color: Colors.black54),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.black54, fontSize: 13)),
            const SizedBox(height: 3),
            Text(subtitle, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ],
    );
  }
}
