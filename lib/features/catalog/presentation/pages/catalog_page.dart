import "package:flutter/material.dart";

import "package:flutter_clean_architecture/core/extension/extension.dart";
import "package:flutter_clean_architecture/core/theme/themes.dart";
import "package:flutter_clean_architecture/core/utils/utils.dart";

part "mixin/catalog_mixin.dart";

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage>
    with CatalogMixin, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    initControllers(this);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          titleTextStyle: context.textStyle.appBarTitle,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(AppIcons.search),
            ),
          ],
        
        ),
       
      );
}
