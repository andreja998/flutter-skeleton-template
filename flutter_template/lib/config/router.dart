import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/features/product_example/presentation/screens/product_details.dart';

// part 'app_router.gr.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: ProductDetails, initial: true)
])
class $AppRouter {}