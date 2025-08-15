import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum {
  dev,
  prod,
}

class EnvVariables {
  EnvVariables._();
  String _envType = "";
  static final EnvVariables instace = EnvVariables._();
  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: ".env.dev");
        break;
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: ".env.prod");
        break;
    }
_envType =dotenv.get("ENV_TYPE") ;
  }
  bool get debugShow => _envType=="prod" ;
}

