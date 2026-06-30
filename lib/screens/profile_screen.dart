import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                gradient: AppColors.primaryGradient,
              ),
              padding: const EdgeInsets.fromLTRB(24, 60, 24, 40),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/150?img=11'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: const Icon(Icons.camera_alt_rounded,
                              color: AppColors.primary, size: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Mubashir Ahmed',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'mubashir@email.com',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Stats row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _ProfileStat(label: 'Appointments', value: '12'),
                      Container(
                          width: 1, height: 36, color: Colors.white30,
                          margin: const EdgeInsets.symmetric(horizontal: 24)),
                      _ProfileStat(label: 'Doctors', value: '4'),
                      Container(
                          width: 1, height: 36, color: Colors.white30,
                          margin: const EdgeInsets.symmetric(horizontal: 24)),
                      _ProfileStat(label: 'Reviews', value: '8'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _ProfileMenuGroup(
                    items: [
                      _MenuItem(
                        icon: Icons.person_rounded,
                        label: 'Personal Information',
                        iconColor: const Color(0xFF0077B6),
                        bgColor: const Color(0xFFE3F2FD),
                      ),
                      _MenuItem(
                        icon: Icons.health_and_safety_rounded,
                        label: 'Medical Records',
                        iconColor: const Color(0xFF2DC653),
                        bgColor: const Color(0xFFE8F5E9),
                      ),
                      _MenuItem(
                        icon: Icons.payment_rounded,
                        label: 'Payment Methods',
                        iconColor: const Color(0xFF7B2FBE),
                        bgColor: const Color(0xFFEDE7F6),
                      ),
                      _MenuItem(
                        icon: Icons.favorite_rounded,
                        label: 'Favorite Doctors',
                        iconColor: const Color(0xFFE53935),
                        bgColor: const Color(0xFFFFEBEE),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _ProfileMenuGroup(
                    items: [
                      _MenuItem(
                        icon: Icons.notifications_rounded,
                        label: 'Notifications',
                        iconColor: const Color(0xFFF57C00),
                        bgColor: const Color(0xFFFFF3E0),
                        trailing: Switch(
                          value: true,
                          onChanged: (_) {},
                          activeColor: AppColors.primary,
                        ),
                      ),
                      _MenuItem(
                        icon: Icons.language_rounded,
                        label: 'Language',
                        iconColor: const Color(0xFF0097A7),
                        bgColor: const Color(0xFFE0F7FA),
                        trailingText: 'English',
                      ),
                      _MenuItem(
                        icon: Icons.lock_rounded,
                        label: 'Privacy & Security',
                        iconColor: const Color(0xFF37474F),
                        bgColor: const Color(0xFFECEFF1),
                      ),
                      _MenuItem(
                        icon: Icons.help_rounded,
                        label: 'Help & Support',
                        iconColor: const Color(0xFF1565C0),
                        bgColor: const Color(0xFFE3F2FD),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Logout
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.error.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.error.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.logout_rounded,
                            color: AppColors.error, size: 20),
                      ),
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                          color: AppColors.error,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String label, value;
  const _ProfileStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String label;
  final Color iconColor, bgColor;
  final Widget? trailing;
  final String? trailingText;
  _MenuItem({
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.bgColor,
    this.trailing,
    this.trailingText,
  });
}

class _ProfileMenuGroup extends StatelessWidget {
  final List<_MenuItem> items;
  const _ProfileMenuGroup({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: items.asMap().entries.map((e) {
          final i = e.key;
          final item = e.value;
          return Column(
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                leading: Container(
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: item.bgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(item.icon, color: item.iconColor, size: 20),
                ),
                title: Text(
                  item.label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textDark,
                  ),
                ),
                trailing: item.trailing ??
                    (item.trailingText != null
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(item.trailingText!,
                                  style: const TextStyle(
                                      color: AppColors.grey, fontSize: 13)),
                              const SizedBox(width: 4),
                              const Icon(Icons.chevron_right_rounded,
                                  color: AppColors.grey),
                            ],
                          )
                        : const Icon(Icons.chevron_right_rounded,
                            color: AppColors.grey)),
                onTap: () {},
              ),
              if (i < items.length - 1)
                const Divider(height: 1, indent: 68, color: AppColors.lightGrey),
            ],
          );
        }).toList(),
      ),
    );
  }
}
