import 'package:code_library/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/provider_controller.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Provider Screen"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterModel>(
              builder: (context, counterModel, child) {
                return Text(
                  '${counterModel.counter}',
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterModel>(context, listen: false)
                        .increment();
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterModel>(context, listen: false)
                        .decrement();
                  },
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
