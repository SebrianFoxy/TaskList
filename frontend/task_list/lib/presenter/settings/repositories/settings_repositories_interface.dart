abstract interface class SettingsRepositoryInterface {
  Future<bool> isDarkThemeSelected();

  Future<void> setDarkThemeSelected(bool selected);

}