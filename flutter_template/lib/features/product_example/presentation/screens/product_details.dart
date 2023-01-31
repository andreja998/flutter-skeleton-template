import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/features/product_example/application/bloc/product_details_bloc.dart';
import 'package:flutter_template/flavors.dart';

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
        title: Text('${F.title}'),
      ),
      body: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: ((context, state) {
          return state.when(initial: () {
            return Column(
              children: [
                Text('INITIALIZATION'),
                ElevatedButton(onPressed: () {}, child: Text('Andreja'))
              ],
            );
          }, loaded: ((productEntity) {
            return Column(
              children: [
                Text(productEntity.description),
                ElevatedButton(onPressed: () {}, child: Text('Andreja'))
              ],
            );
          }), failure: ((productFailure) {
            return Text('FAILURE');
          }));
        }),)
    );
  }
}