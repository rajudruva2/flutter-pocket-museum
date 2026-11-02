import 'package:flutter/material.dart';

      void main() => runApp(const DemoApp());

      class DemoApp extends StatelessWidget {
        const DemoApp({super.key});

        static const Color accent = Color(0xFF6A1B9A);

        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            title: 'Pocket Museum',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: accent),
              useMaterial3: true,
            ),
            home: const DemoHomePage(),
          );
        }
      }

      class DemoHomePage extends StatelessWidget {
        const DemoHomePage({super.key});

        static const List<Map<String, String>> entries = [
          {'title': 'Ancient coin', 'detail': 'Trade and daily life'},
{'title': 'Ceramic bowl', 'detail': 'Craft traditions'},
{'title': 'Star map', 'detail': 'Early astronomy'}
        ];

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Pocket Museum'),
              backgroundColor: DemoApp.accent.withOpacity(0.12),
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  color: DemoApp.accent.withOpacity(0.08),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pocket Museum',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text('Discover objects and their stories'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ...entries.map((entry) => Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.account_balance),
                    ),
                    title: Text(entry['title']!),
                    subtitle: Text(entry['detail']!),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                )),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Demo app · sample data only',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        }
      }
