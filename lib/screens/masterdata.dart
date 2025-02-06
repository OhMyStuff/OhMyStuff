import 'package:flutter/material.dart';

class MasterDataPage extends StatelessWidget {
  const MasterDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主数据'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.widgets_rounded),
            title: Text('产品'),
            subtitle: Text('10'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.location_on_rounded),
            title: Text('位置'),
            subtitle: Text('3'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.view_list_rounded),
            title: Text('购物清单'),
            subtitle: Text('2'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.qr_code_rounded),
            title: Text('二维码'),
            subtitle: Text('3'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
