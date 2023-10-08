import 'package:flutter/material.dart';
import 'package:instagramuiclone/util/shop_gride.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.grey[500],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                ),
                Container(
                  child: Text(
                    'Search...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ShopGride(),
    );
  }
}
