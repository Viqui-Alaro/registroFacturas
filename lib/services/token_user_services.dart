import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../share_preferences/preferences.dart';

Future<Usuario> tokenUsuario() async {
  final response = await http.get(
    Uri.parse('https://siatrest.impuestos.gob.bo/str-cau-caut-rest/rest/identidad/usuarioPorToken'),
    // Send authorization headers to the backend.
    headers: {
      HttpHeaders.authorizationHeader: Preferences.token,
    },
  );
  final responseJson = jsonDecode(response.body);

  return Usuario.fromJson(responseJson);
}


class Usuario{
    final Bool ok;
    final int usuarioId;
    final int personaId;
    final int estadoUsuarioId;
    final String login;
    final int oficinaId;
    final String cargo;
    final String cargoId;
    final String descripcionOficina;
    final String dependenciaId;
    final String descripcionDependencia;
    final String nombreCompleto;
    final String correo;
    final String numeroDocumento;
    final int nit;
    final String razonSocial;
    final String tramites;
    final String token;
    final int tipoUsuario;
    final String celular;
        const Usuario({
              required this.ok,
              required this.usuarioId,
              required this.personaId,
              required this.estadoUsuarioId,
              required this.login,
              required this.oficinaId,
              required this.cargo,
              required this.cargoId,
              required this.descripcionOficina,
              required this.dependenciaId,
              required this.descripcionDependencia,
              required this.nombreCompleto,
              required this.correo,
              required this.numeroDocumento,
              required this.nit,
              required this.razonSocial,
              required this.tramites,
              required this.token,
              required this.tipoUsuario,
              required this.celular,
        });

      factory Usuario.fromJson(Map<String, dynamic> json) {
        return Usuario(
          ok: json['ok'],
          usuarioId: json['usuarioId'],
          personaId: json['personaId'],
          estadoUsuarioId: json['estadoUsuarioId'],
          login: json['login'],
          oficinaId: json['oficinaId'],
          cargo: json['cargo'],
          cargoId: json['cargoId'],
          descripcionOficina: json['descripcionOficina'],
          dependenciaId: json['dependenciaId'],
          descripcionDependencia: json['descripcionDependencia'],
          nombreCompleto: json['nombreCompleto'],
          correo: json['correo'],
          numeroDocumento: json['numeroDocumento'],
          nit: json['nit'],
          razonSocial: json['razonSocial'],
          tramites: json['tramites'],
          token: json['token'],
          tipoUsuario: json['tipoUsuario'],
          celular: json['celular']
        );
  }  
}


