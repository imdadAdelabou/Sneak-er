import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/locator.dart';
import 'package:sneaker/viewModels/base.viewmodel.dart';

class BaseView<T extends BaseModel> extends StatelessWidget {
  final Widget Function(BuildContext context, T value, Widget? child)? builder;

  BaseView({this.builder});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => locator<T>(),
      child: Consumer<T>(builder: builder!),
    );
  }
}
