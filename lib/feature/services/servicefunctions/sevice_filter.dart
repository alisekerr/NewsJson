class ServiceFilter{
  String getNewsLinkByCountryName(String countryName) {
    switch (countryName) {
      case "Turkey":
        return "tr&category=business&apiKey=cb9e52a192274aa4a44b9c8ddc4c7318";
      case "America":
        return "us&category=business&apiKey=cb9e52a192274aa4a44b9c8ddc4c7318";
      case "France":
        return "fr&category=business&apiKey=cb9e52a192274aa4a44b9c8ddc4c7318";
      default:
    }
    return "";
  }
}