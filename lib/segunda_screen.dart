import 'package:flutter/material.dart';

// Tela que apresenta as diferenças entre Flutter e React Native
class SegundaTela extends StatelessWidget {
  const SegundaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra superior da aplicação
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('React Native vs Flutter'), // Título do AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Espaçamento ao redor do texto
        child: SingleChildScrollView(
          // Permite rolar a tela se o conteúdo for muito grande
          child: const Text(
            // Texto explicativo das diferenças entre Flutter e React Native
            '''A principal diferença entre Flutter e React Native reside na forma como a interface do utilizador é gerada e como o código é executado. O Flutter usa uma abordagem de "renderização de tela" (painting canvas), enquanto o React Native integra-se com os componentes nativos do iOS e Android. Isso afeta o desempenho, a consistência da interface e a facilidade de atualização de componentes.

Em resumo:

Flutter:
- Utiliza a linguagem Dart.
- Renderiza tudo através de widgets, criando uma interface consistente em todas as plataformas.
- Possui um desempenho superior e mais consistente em diferentes plataformas.
- Pode ter uma curva de aprendizado um pouco maior para desenvolvedores que não conhecem Dart. 

React Native:
- Utiliza JavaScript.
- Interage com os componentes nativos das plataformas, o que pode levar a diferenças na interface visual entre iOS e Android.
- Oferece um desenvolvimento mais rápido para desenvolvedores de JavaScript, com um ecossistema vasto de bibliotecas e ferramentas.
- A arquitetura pode ser mais complexa, com a necessidade de lidar com interações entre JavaScript e código nativo.

Detalhes:

Componentes:
- O Flutter usa widgets que são blocos de construção da interface, enquanto o React Native utiliza componentes que são mapeados para componentes nativos.

Desempenho:
- O Flutter, por renderizar tudo internamente, tende a ter um desempenho superior e mais consistente em todas as plataformas, enquanto o React Native, ao usar componentes nativos, pode apresentar diferenças de desempenho dependendo da plataforma.

Atualização de componentes:
- O Flutter não é afetado por atualizações de componentes nativos das plataformas, enquanto o React Native pode ser, o que pode gerar problemas de consistência visual e exigir mais trabalho do desenvolvedor.

Ecossistema:
- O React Native tem um ecossistema mais vasto de bibliotecas e ferramentas JavaScript, enquanto o Flutter tem um ecossistema próprio, com foco em widgets e ferramentas específicas para o desenvolvimento com Dart.

Curva de Aprendizagem:
- O React Native pode ser mais fácil de aprender para desenvolvedores web que já conhecem JavaScript, enquanto o Flutter pode ter uma curva de aprendizado um pouco maior para quem não conhece Dart.''',
            style: TextStyle(fontSize: 16), // Tamanho da fonte
          ),
        ),
      ),
    );
  }
}
