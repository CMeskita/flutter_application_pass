import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Defina o número de colunas aqui
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount:
          6, // Defina o número total de células na grade (linhas x colunas)
      itemBuilder: (BuildContext context, int index) {
        // Aqui você pode criar os widgets individuais para cada célula
        return Card(
          child: Center(
            child: Text('Item $index'),
          ),
        );
      },
    );
  }
}
