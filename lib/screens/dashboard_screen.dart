import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/income_expense_card.dart';
import '../widgets/dashboard_buttons.dart';
import '../widgets/dashboard_notifications.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            BalanceCard(),
            SizedBox(height: 16),
            IncomeExpenseCard(),
            SizedBox(height: 24),
            DashboardButtons(),
            SizedBox(height: 24),
            DashboardNotifications(),
          ],
        ),
      ),
    );
  }
}

