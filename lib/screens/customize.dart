import 'package:flutter/material.dart';

class CustomizePage extends StatelessWidget {
  const CustomizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('自定义'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SwitchListTile(
                  secondary: Icon(Icons.colorize_outlined),
                  title: Text('动态取色'),
                  subtitle: Text('从壁纸中取色并应用于主题色彩'),
                  value: false,
                  onChanged: (value) {},
                ),
                SwitchListTile(
                  secondary: Icon(Icons.contrast_outlined),
                  title: Text('高对比度深色模式'),
                  subtitle: Text('关闭'),
                  value: false,
                  onChanged: (value) {},
                ),
                SwitchListTile(
                  secondary: Icon(Icons.question_mark_outlined),
                  title: Text('初学者模式'),
                  subtitle: Text('默认显示帮助文本'),
                  value: false,
                  onChanged: (value) {},
                ),
                ListTile(
                  leading: Icon(Icons.shortcut_outlined),
                  title: Text('管理快捷方式'),
                  subtitle: Text('未选择'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.language_outlined),
                  title: Text('界面语言'),
                  subtitle: Text('中文'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
