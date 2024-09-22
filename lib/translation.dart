import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'change_theme': 'Change Theme',
          'change_language': 'Change Language',
        },
        'es_ES': {
          'hello': 'Hola',
          'change_theme': 'Cambiar Tema',
          'change_language': 'Cambiar Idioma',
        },
      };
}
