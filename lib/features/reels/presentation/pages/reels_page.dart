import "package:flutter/material.dart";

import "package:flutter_clean_architecture/core/extension/extension.dart";

part "mixin/favorites_mixin.dart";

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage>
    with FavoritesMixin, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    initControllers(this);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text("Reels"),
          titleTextStyle: context.textStyle.appBarTitle,
        ),
        body: const Center(
          child: Text(
            " Reels soon... ",
            textAlign: TextAlign.center,
          ),
        ),
      );
}
