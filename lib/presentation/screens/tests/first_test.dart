import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:code_test/lang.dart';

import '../../bloc/first_test/first_test_bloc.dart';
import '../../bloc/user/user_bloc.dart';

class FirstTest extends StatefulWidget {
  const FirstTest._();

  static Widget provideRoute() {
    return BlocProvider(
      create: (_) => GetIt.instance<FirstTestBloc>(),
      child: const FirstTest._(),
    );
  }

  @override
  State<FirstTest> createState() => _FirstTestState();
}

class _FirstTestState extends State<FirstTest> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstTestBloc, FirstTestState>(
      builder: (context, firstTestState) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, userState) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  currentLanguage
                      .translate("yourLevel")
                      .replaceAll("\${level}", "${userState.user.level}"),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      context.read<UserBloc>().tryToLevelUp();
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              body: firstTestState.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.green.withOpacity(0.5),
                    padding: const EdgeInsets.all(16),
                    child: Text(currentLanguage.translate("firstTestIntroduction")),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: firstTestState.activeData.length,
                      cacheExtent: 300,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final data = firstTestState.activeData[index];
                        final isLocked = data.level > userState.user.level;

                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "${data.name} [Level ${data.level}]",
                            style: TextStyle(
                              fontSize: 14,
                              color: isLocked ? Colors.red : null,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
