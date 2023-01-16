import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/features/product_example/application/bloc/product_details_bloc.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  void initState() {
    BlocProvider.of<ProductDetailsBloc>(context).add(const ProductDetailsEvent.getProduct(id: '1'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product details'),
      ),
      body: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: ((context, state) {
          return state.when(initial: () {
            return Text('INITIALIZATION');
          }, loaded: ((productEntity) {
            return Text(productEntity.description);
          }), failure: ((productFailure) {
            return Text('FAILURE');
          }));
        }),)
    );
  }
}