import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/generated/app_localizations.dart';
import '../../../lang.dart';
import '../../../main.dart';
import '../../bloc/user/user_bloc.dart';
import '../../widget/requirement_plate.dart';
import '../tests/first_test.dart';
import '../tests/fourth_test.dart';
import '../tests/second_test.dart';
import '../tests/third_test.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (BuildContext context, UserState state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(AppLocalizations.of(context)!.firstTestIntroduction),

              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return FirstTest.provideRoute();
                      },
                    ),
                  );
                },
                child: Text(currentLanguage.translate("firstTest")),
              ),
              const SizedBox(height: 16),
              Stack(
                children: [
                  state.user.level == 3
                      ? ElevatedButton(
                    style: const ButtonStyle(
                      maximumSize:
                      MaterialStatePropertyAll(Size(150, 48)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return SecondTest.provideRoute();
                          },
                        ),
                      );
                    },
                    child: Center(
                      child:
                      Text(currentLanguage.translate("secondTest")),
                    ),
                  )
                      : const RequirementPlate(level: 3)
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ThirdTest.provideRoute();
                      },
                    ),
                  );
                },
                child: Text(currentLanguage.translate("thirdTest")),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return FourthTest.provideRoute();
                      },
                    ),
                  );
                },
                child: Text(currentLanguage.translate("fourthTest")),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        currentLanguage
                            .translate("floatingButtonDescription")
                            .replaceAll("\${level}", "${state.user.level}"),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                currentLanguage = SupportedLanguage.english;
                              });
                            },
                            child: Text(currentLanguage.translate("english")),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                currentLanguage = SupportedLanguage.bengali;
                              });
                            },
                            child: Text(currentLanguage.translate("Bengali")),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<UserBloc>().tryToLevelUp();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}