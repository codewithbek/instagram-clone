part of "../seach_page.dart";

mixin TvMixin on State<SearchPage> {
  @override
  void initState() {
    super.initState();
    print("TvPage init");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("TvPage deactivate");
  }
}
