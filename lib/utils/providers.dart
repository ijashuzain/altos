import 'package:altos/providers/auth_provider.dart';
import 'package:altos/providers/customer_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => AuthProvider()),
  ChangeNotifierProvider(create: (_) => CustomerProvider()),
];
