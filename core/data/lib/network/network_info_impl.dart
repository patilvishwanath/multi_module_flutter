import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data/network/network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> get isConnected async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    print('Connectivity result: $connectivityResult');

    return connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi);
  }
}
