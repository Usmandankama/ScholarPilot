import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Row(
        children: [
          // 1. The Navy Sidebar
          Container(
            width: 250,
            color: const Color(0xFF1E3A8A),
            child: Column(
              children: [
                const SizedBox(height: 40),
                // Logo Area
                const Text(
                  'ScholarPilot',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                // Navigation Items
                _buildNavItem(Icons.dashboard, 'Dashboard', isActive: true),
                _buildNavItem(Icons.book, 'My Semesters'),
                _buildNavItem(Icons.settings, 'Settings'),
              ],
            ),
          ),
          
          // 2. The Main Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Semester At A Glance',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Placeholder for the "Upload" card and AI processing widget
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text('AI Processing Status / Upload Area will go here'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String title, {bool isActive = false}) {
    return Container(
      color: isActive ? const Color(0xFF0EA5E9).withOpacity(0.2) : Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: isActive ? const Color(0xFF0EA5E9) : Colors.white70),
        title: Text(
          title,
          style: TextStyle(
            color: isActive ? const Color(0xFF0EA5E9) : Colors.white70,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}