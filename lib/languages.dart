import 'package:get/get.dart';

import 'languages/ban.dart';
import 'languages/eng.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "en_US": eng,
    "bn_BD": ban,
  };
}