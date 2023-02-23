import 'package:flutter/material.dart';
import 'questao.dart';
import 'reposta.dart';

class Questionario extends StatelessWidget {
  final List perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario(this.perguntas, this.perguntaSelecionada, this.responder);

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas
            .map((resp) => Resposta(resp['texto'].toString(),
                () => responder(int.parse(resp['pontuacao'].toString()))))
            .toList()
      ],
    );
  }
}
