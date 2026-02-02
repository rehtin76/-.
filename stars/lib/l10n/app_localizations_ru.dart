// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Stars';

  @override
  String get feed => 'Лента';

  @override
  String get upload => 'Загрузить';

  @override
  String get profile => 'Профиль';

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get login => 'Войти';

  @override
  String get logout => 'Выйти';

  @override
  String get uploadVideo => 'Загрузить видео';

  @override
  String get uploadPhoto => 'Загрузить фото';

  @override
  String get videoLimit => 'Видео не более 5 минут';

  @override
  String get description => 'Описание';

  @override
  String get save => 'Сохранить';

  @override
  String get cancel => 'Отмена';
}
