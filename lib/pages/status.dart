import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bandnames/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sokectService = Provider.of<SocketService>(context);
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Serverstatus: ${sokectService.serverStatus}')
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          final datos = {
            'nombre': 'Angel',
            'mensaje': 'Hola desde Flutter'
          };
          sokectService.socket.emit('nuevo-mensaje', datos);
        },
      ),
    );
  }
}