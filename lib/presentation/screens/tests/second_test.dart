import 'package:flutter/material.dart';
import 'package:code_test/lang.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_test/lang.dart';

import '../../bloc/second_test/second_test_bloc.dart';
import '../../bloc/second_test/second_test_state.dart';

class SecondTest extends StatelessWidget {
  const SecondTest._();

  static Widget provideRoute() {
    return BlocProvider(
      create: (_) => SecondTestBloc(),
      child: const SecondTest._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentLanguage.translate("secondTest")),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.green.withOpacity(0.5),
            padding: const EdgeInsets.all(16),
            child: Text(currentLanguage.translate("secondTestIntroduction")),
          ),

          BlocBuilder<SecondTestBloc, SecondTestState>(
            builder: (context, state) {
              return state.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (data) => Expanded(
                  child: ListView.separated(
                    itemCount: data.length,
                    separatorBuilder: (_, __) => const Divider(),
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "${item.name} [Level ${item.level}]",
                          style: TextStyle(
                            color: item.level > 5 ? Colors.red : Colors.black,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

