import 'package:get/get.dart';

import 'en-us/common.dart';
import 'zh-cn/common.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': CommonTranslationEnUS().keys['en_US']!,
        'zh_CN': CommonTranslationZhCN().keys['zh_CN']!,
      };
}
