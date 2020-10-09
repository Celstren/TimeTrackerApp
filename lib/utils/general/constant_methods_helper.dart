class ConstantMethodHelper {
  static String getErrorMessage(int statusCode) {
    switch (statusCode) {
      case 501:
        return "Ha fallado el servicio";
      case 401:
        return "Sin autorización";
      case 201:
        return "Éxito";
      default:
        return "Sin Conexión";
    }
  }
}