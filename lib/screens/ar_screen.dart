import 'package:flutter/material.dart';

class ARScreen extends StatefulWidget {
  const ARScreen({Key? key}) : super(key: key);

  @override
  State<ARScreen> createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR Pembelajaran'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.view_in_ar,
              size: 80,
              color: Colors.blue,
            ),
            const SizedBox(height: 24),
            Text(
              'Modul AR Pembelajaran',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            Text(
              'Pelajari Sains dengan Teknologi AR',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('AR Experience dimulai...'),
                  ),
                );
              },
              icon: const Icon(Icons.play_circle),
              label: const Text('Mulai AR Experience'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
            ),
            const SizedBox(height: 24),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildARCard(
                  'Sistem Peredaran Darah',
                  Icons.favorite,
                  Colors.red,
                ),
                _buildARCard(
                  'Sistem Pernafasan',
                  Icons.lungs,
                  Colors.lightBlue,
                ),
                _buildARCard(
                  'Sistem Pencernaan',
                  Icons.restaurant,
                  Colors.orange,
                ),
                _buildARCard(
                  'Planet & Bintang',
                  Icons.star,
                  Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildARCard(
    String title,
    IconData icon,
    Color color,
  ) {
    return Card(
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('AR: $title')),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}