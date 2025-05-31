import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('Settings'),
          ),
          SliverList.list(
            children: [
              ListTile(
                leading: Icon(Icons.color_lens_rounded),
                title: Text('自定义'),
                subtitle: Text('深色模式、动态取色、语言'),
                onTap: () => context.push('/settings/customize'),
              ),
              ListTile(
                leading: Icon(Icons.info_rounded),
                title: Text('关于'),
                subtitle: Text('版本、意见反馈、自动更新'),
                onTap: () => context.push('/settings/about'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
