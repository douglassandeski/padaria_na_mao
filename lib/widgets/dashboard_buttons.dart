import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class DashboardButtons extends StatelessWidget {
  const DashboardButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.5,
      children: [
        _buildButton(context, 'Lançamentos', Icons.add_circle_outline),
        _buildButton(context, 'Vendas Fiado', Icons.receipt_long),
        _buildButton(context, 'Assistente IA', Icons.smart_toy_outlined),
        _buildButton(context, 'Configurações', Icons.settings),
      ],
    );
  }

  Widget _buildButton(BuildContext context, String label, IconData icon) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.card,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.accent, size: 32),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(color: AppColors.textPrimary)),
        ],
      ),
    );
  }
}
