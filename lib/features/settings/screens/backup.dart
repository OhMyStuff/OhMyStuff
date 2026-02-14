import 'package:flutter/material.dart';

class BackupPage extends StatelessWidget {
  const BackupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('备份与恢复'),
          ),
          SliverList.list(
            children: [
              ListTile(
                leading: Icon(Icons.folder_open_rounded),
                title: Text('备份路径'),
                subtitle: Text('点击选择备份路径'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.file_open_outlined),
                title: Text('恢复'),
                subtitle: Text('选择文件恢复数据'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
