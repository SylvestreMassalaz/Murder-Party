// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'murder_rest_api.dart';

// **************************************************************************
// RoutingGenerator
// **************************************************************************

Router _$ApiRouterRouter(ApiRouter service) =>
    Router()..mount('/api/player', service.playerController.router.call);

Router _$PlayerControllerRouter(PlayerController service) =>
    Router()..add('GET', '/player/<id>', (Request request, String $id) async {
      return await service.getPlayer(request, $id);
    });
