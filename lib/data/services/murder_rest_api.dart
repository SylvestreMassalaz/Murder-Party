import 'package:shelf/shelf.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_routing/shelf_routing.dart';

part 'murder_rest_api.g.dart';

class MurderRestApi {
  MurderRestApi();

  static const int _port = 8000;

  late String murderId;

  Future<String> startApi(String murderId) async {
    this.murderId = murderId;
    final networkInfo = NetworkInfo();
    final localIp = (await networkInfo.getWifiIP()) ?? 'unknown';
    final handler = const Pipeline()
        .addMiddleware(logRequests())
        .addHandler(ApiRouter().router.call);
    final server = await shelf_io.serve(handler, localIp, _port);
    server.autoCompress = true;
    return 'http://${server.address.host}:${server.port}/';
  }

  Response handleRequest(Request request) {
    return Response.ok(
      '{"murderId": "$murderId"}',
      headers: {'Content-Type': 'application/json'},
    );
  }
}

class ApiRouter {
  static const String _prefix = '/api';

  Router get router => _$ApiRouterRouter(this);

  @Route.mount('$_prefix/player')
  PlayerController get playerController => PlayerController();
}

class PlayerController implements RouterMixin {
  @Route.get('/player/<id>')
  Future<JsonResponse<PlayerResource>> getPlayer(
    Request request,
    String id,
  ) async {
    return JsonResponse.ok(PlayerResource(name: 'Player #$id'));
  }

  @override
  Router get router => _$PlayerControllerRouter(this);
}

class PlayerResource {
  const PlayerResource({required this.name});

  final String name;
}
