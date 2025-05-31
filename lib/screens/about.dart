import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('关于'),
          ),
          SliverList.list(
            children: [
              ListTile(
                leading: Icon(Icons.file_present_outlined),
                title: Text('README'),
                subtitle: Text('查看 GitHub 项目地址与应用说明'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.copyright_outlined),
                title: Text('许可'),
                subtitle: Text('浏览开源许可信息'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.restore_outlined),
                title: Text('版本发布'),
                subtitle: Text('查看最新版本与更新日志'),
                onTap: () {},
              ),
              SwitchListTile(
                secondary: Icon(Icons.update_outlined),
                title: Text('自动更新'),
                subtitle: Text('自动检查并更新到 GitHub 上的最新版本'),
                value: true,
                onChanged: (value) {},
              ),
              ListTile(
                leading: Icon(Icons.info_outline_rounded),
                title: Text('当前版本'),
                subtitle: Text('1.0.0'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
