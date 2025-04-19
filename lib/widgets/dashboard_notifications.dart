import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class DashboardNotifications extends StatelessWidget {
  const DashboardNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> notifications = [
      'Cliente João está devendo R\$ 30,00.',
      'Despesas acima do normal esta semana.',
      'IA: Sugestão de corte em gasto com energia.',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Notificações',
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ...notifications.map(
          (msg) => Card(
            color: AppColors.card,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                msg,
                style: const TextStyle(color: AppColors.textPrimary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
