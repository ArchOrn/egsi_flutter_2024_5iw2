import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_5iw2/cart/blocs/cart_bloc.dart';
import 'package:flutter_5iw2/cart/cart_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartFloatingButton extends StatelessWidget {
  static const String heroTag = 'cart_floating_button';

  const CartFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Stack(
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () => CartScreen.navigateTo(context),
            child: const Icon(Icons.shopping_cart),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return Center(
                    child: Text(
                      '${state.count}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
