// To parse this JSON data, do
//
//     final usuasioToken = usuasioTokenFromJson(jsonString);

import 'dart:convert';

UsuasioToken usuasioTokenFromJson(String str) => UsuasioToken.fromJson(json.decode(str));

String usuasioTokenToJson(UsuasioToken data) => json.encode(data.toJson());

class UsuasioToken {

    bool ok;
    List<Mensaje> mensajes;
    int usuarioId;
    int personaId;
    int estadoUsuarioId;
    String login;
    int oficinaId;
    dynamic cargo;
    dynamic cargoId;
    dynamic descripcionOficina;
    dynamic dependenciaId;
    dynamic descripcionDependencia;
    String nombreCompleto;
    String correo;
    String numeroDocumento;
    int nit;
    String razonSocial;
    dynamic tramites;
    dynamic token;
    int tipoUsuario;
    dynamic celular;

    UsuasioToken({
        required this.ok,
        required this.mensajes,
        required this.usuarioId,
        required this.personaId,
        required this.estadoUsuarioId,
        required this.login,
        required this.oficinaId,
        this.cargo,
        this.cargoId,
        this.descripcionOficina,
        this.dependenciaId,
        this.descripcionDependencia,
        required this.nombreCompleto,
        required this.correo,
        required this.numeroDocumento,
        required this.nit,
        required this.razonSocial,
        this.tramites,
        this.token,
        required this.tipoUsuario,
        this.celular,
    });



    factory UsuasioToken.fromJson(Map<String, dynamic> json) => UsuasioToken(
        ok: json["ok"],
        mensajes: List<Mensaje>.from(json["mensajes"].map((x) => Mensaje.fromJson(x))),
        usuarioId: json["usuarioId"],
        personaId: json["personaId"],
        estadoUsuarioId: json["estadoUsuarioId"],
        login: json["login"],
        oficinaId: json["oficinaId"],
        cargo: json["cargo"],
        cargoId: json["cargoId"],
        descripcionOficina: json["descripcionOficina"],
        dependenciaId: json["dependenciaId"],
        descripcionDependencia: json["descripcionDependencia"],
        nombreCompleto: json["nombreCompleto"],
        correo: json["correo"],
        numeroDocumento: json["numeroDocumento"],
        nit: json["nit"],
        razonSocial: json["razonSocial"],
        tramites: json["tramites"],
        token: json["token"],
        tipoUsuario: json["tipoUsuario"],
        celular: json["celular"],
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "mensajes": List<dynamic>.from(mensajes.map((x) => x.toJson())),
        "usuarioId": usuarioId,
        "personaId": personaId,
        "estadoUsuarioId": estadoUsuarioId,
        "login": login,
        "oficinaId": oficinaId,
        "cargo": cargo,
        "cargoId": cargoId,
        "descripcionOficina": descripcionOficina,
        "dependenciaId": dependenciaId,
        "descripcionDependencia": descripcionDependencia,
        "nombreCompleto": nombreCompleto,
        "correo": correo,
        "numeroDocumento": numeroDocumento,
        "nit": nit,
        "razonSocial": razonSocial,
        "tramites": tramites,
        "token": token,
        "tipoUsuario": tipoUsuario,
        "celular": celular,
    };
}

class Mensaje {
    Mensaje({
        this.mensajeAplicacionId,
        required this.codigo,
        required this.codigoRelacionado,
        required this.descripcion,
        required this.descripcionUi,
        required this.tipoDestinoId,
        this.destino,
        required this.estadoId,
        required this.siglaSistema,
    });

    dynamic mensajeAplicacionId;
    int codigo;
    int codigoRelacionado;
    String descripcion;
    String descripcionUi;
    int tipoDestinoId;
    dynamic destino;
    String estadoId;
    String siglaSistema;

    factory Mensaje.fromJson(Map<String, dynamic> json) => Mensaje(
        mensajeAplicacionId: json["mensajeAplicacionId"],
        codigo: json["codigo"],
        codigoRelacionado: json["codigoRelacionado"],
        descripcion: json["descripcion"],
        descripcionUi: json["descripcionUi"],
        tipoDestinoId: json["tipoDestinoId"],
        destino: json["destino"],
        estadoId: json["estadoId"],
        siglaSistema: json["siglaSistema"],
    );

    Map<String, dynamic> toJson() => {
        "mensajeAplicacionId": mensajeAplicacionId,
        "codigo": codigo,
        "codigoRelacionado": codigoRelacionado,
        "descripcion": descripcion,
        "descripcionUi": descripcionUi,
        "tipoDestinoId": tipoDestinoId,
        "destino": destino,
        "estadoId": estadoId,
        "siglaSistema": siglaSistema,
    };
}
