import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        action: SnackBarAction(label: 'Ok!', onPressed: () {}),
        content: const Text('Hola!')));
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Quis qui deserunt mollit fugiat occaecat nisi. Enim consectetur ipsum commodo sunt incididunt aute laborum. Eiusmod ut dolore eu consectetur. Et occaecat aute mollit voluptate consequat tempor. Amet consectetur et enim Lorem eu tempor.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () {}, child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar y dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Ullamco ut ex ad tempor mollit consectetur cillum ipsum Lorem sit magna exercitation. Est ex eu incididunt culpa do occaecat do ad magna ad ad cillum. Dolor sit sint est officia. Labore consequat sint veniam est mollit cillum ea ad dolor sint ipsum qui nisi sit. Eiusmod et id quis ullamco est labore quis est enim sint consequat. Sint irure anim consectetur sunt ullamco incididunt reprehenderit laborum.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar diálogo')),
          ],
        ),
      ),
    );
  }
}
