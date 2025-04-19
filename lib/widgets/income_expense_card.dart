import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class IncomeExpenseCard extends StatelessWidget {
  const IncomeExpenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  Text('Receitas', style: TextStyle(color: AppColors.textSecondary)),
                  SizedBox(height: 8),
                  Text(
                    'R\$ 4.000,00',
                    style: TextStyle(color: AppColors.income, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  Text('Despesas', style: TextStyle(color: AppColors.textSecondary)),
                  SizedBox(height: 8),
                  Text(
                    'R\$ 1.660,00',
                    style: TextStyle(color: AppColors.expense, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
