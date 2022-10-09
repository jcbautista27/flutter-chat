import 'package:chat/global/environment.dart';
import 'package:chat/models/usuarios_response.dart';
import 'package:chat/services/auth_service.dart';
import 'package:http/http.dart' as http;
import 'package:chat/models/usuario.dart';

class UsuariosServices{


  Future<List<Usuario>> getUsuarios() async{

    try {
      final token = await AuthService.getToken();
      final uri = Uri.parse('${Environment.apiUrl}/usuarios');
      final resp = await http.get(uri,
      headers: {
        'Content-Type': 'applicacion/json',
        'x-token': token.toString()
      });

      final usuariosResponse = usuarioResponseFromJson(resp.body);

      return usuariosResponse.usuarios;

    } catch (e) {
      return [];
    }

  }
}