import 'package:flutter/material.dart';
import 'package:white_label/client_switch.dart';
import 'package:provider/provider.dart';
import 'package:white_label/home/home_view_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      builder: (context, _) {
        return Scaffold(
            appBar: AppBar(
              title: SizedBox(
                  width: 200,
                  child: Image.asset(ClientSwitch.current().iconPath)),
            ),
            body: body(context));
      },
    );
  }

  Center body(BuildContext context) {
    final viewModel = context.read<HomeViewModel>();
    final feature = viewModel.feature;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          card(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: viewModel.incrementCounter,
                  child: const Icon(Icons.keyboard_arrow_up)),
              if (feature != null && feature.isDecrementtEnabled)
                ElevatedButton(
                    onPressed: viewModel.decrementCounter,
                    child: const Icon(Icons.keyboard_arrow_down)),
              if (feature != null && feature.isDoubleIncremetEnabled)
                ElevatedButton(
                    onPressed: viewModel.incrementDoubleCounter,
                    child: const Icon(Icons.keyboard_double_arrow_up)),
            ]
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: e,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  Card card(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${ClientSwitch.current().title} have pushed the button this many times:',
            ),
            Text(
              '${viewModel.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
