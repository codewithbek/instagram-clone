import "package:flutter/material.dart";

import "package:flutter_clean_architecture/constants/image_constants.dart";
import "package:flutter_clean_architecture/core/extension/extension.dart";
import "package:flutter_clean_architecture/core/utils/utils.dart";
import "package:flutter_clean_architecture/core/widgets/loading/modal_progress_hud.dart";

part "mixin/tv_mixin.dart";

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TvMixin {
  @override
  Widget build(BuildContext context) => const Scaffold(
        body: ModalProgressHUD(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image(
              //   image: AssetImage(Images.icBoxEmpty),
              //   width: 135,
              //   height: 135,
              // ),
              // AppUtils.kGap40,
              Text(
                "Soon... ",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
}
