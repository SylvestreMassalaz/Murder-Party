import 'package:shelf/shelf.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_routing/shelf_routing.dart';

part 'murder_rest_api.g.dart';

class MurderRestApi {
  MurderRestApi();

  late String murderId;

  Future<String> startApi(String murderId) async {
    this.murderId = murderId;
    var networkInfo = NetworkInfo();
    String localIp = (await networkInfo.getWifiIP()) ?? 'unknown';
    var handler = const Pipeline()
        .addMiddleware(logRequests())
        .addHandler(handleRequest);
    var server = await shelf_io.serve(handler, localIp, 8000);
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
  static const _prefix = "/api";

  Route get router => _$ApiRouterRouter(this);

  @Route.mount('$_prefix/player')
  PlayerController get playerController => PlayerController();
}

class PlayerController implements RouterMixin {
  @Route.get('/player/<id>')
  Future<JsonResponse<PlayerResource>> getPlayer(
    Request request,
    String id,
  ) async {
    final playerResource = PlayerResource(name: "Player #$id");
    return JsonResponse.ok(playerResource);
  }

  @override
  Router get router => _$PlayerControllerRouter(this);
}

class PlayerResource {
  const PlayerResource({required this.name});

  final String name;
}
