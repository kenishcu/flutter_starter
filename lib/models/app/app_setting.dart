class AppSetting {

  bool? darkmode;

  AppSetting({
    this.darkmode = false,
  });

  static AppSetting fromMap(Map<String, dynamic> settings) {
    return AppSetting(
      darkmode: settings["darkmode"] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {'darkmode': darkmode,};

}