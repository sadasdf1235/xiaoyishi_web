import 'package:get/get.dart';

import 'I18n.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'zh_CN': {
      I18n.XiaoYiShi : '校易市',
      I18n.Home : '首页',
      I18n.About_Us : '关于我们',
      I18n.Contact_Us : '联系我们',
      I18n.Help : '帮助',
      I18n.Download : '下载',
      I18n.SecGood : '二手好物',
      I18n.SecWorld : '二手拯救世界',
      I18n.FindAndShare : '找到你的宝贝，分享你的宝藏！',
      I18n.FindSecGood : '发现二手好物',
      I18n.Publicity : '''校园闲置物品的新家就在这里！校园闲置交易平台提供安全可靠的交易环境，让买卖变得简单又愉快。无论是学习用品、时尚单品还是生活小物，都能在这里找到合适的买家或卖家。赶快加入我们，开启你的校园交易之旅吧！''',
    },
    'en_US': {
      I18n.Home : I18n.Home,
      I18n.About_Us : I18n.About_Us,
      I18n.Contact_Us : I18n.Contact_Us,
      I18n.Help : I18n.Help,
      I18n.Download : I18n.Download,
      I18n.XiaoYiShi : I18n.XiaoYiShi,
      I18n.SecGood : I18n.SecGood,
      I18n.SecWorld : I18n.SecWorld,
      I18n.FindAndShare : I18n.FindAndShare,
      I18n.Publicity : I18n.Publicity,
      I18n.FindSecGood : I18n.FindSecGood,
    },
  };
}
