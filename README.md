# Aplicativo de avaliação edusoft

Objetivo: Avaliar as habilidades de desenvolvimento de
uma solução como: raciocínio, organização e padrões
de projetos utilizados.

Construir um projeto que consuma web-service obtenha dos
dados do nomes do Censo, e mostre em uma lista com
rolagem e paginação

## Solução

Tecnologias:
    Linguagem: Flutter & Dart SDK;
    Padrões de Projeto: Clean Architecure (Clean Dart), MVVM (Aplicada na camada de apresentação), DTO, Repository, Inversão de Controle (IoC);
    Reatividade: ValueNotifier Nativo do Flutter;

Features:
    Paginação com Scroll infinito;
    Camada de testes unitários;
    Layout responsivo;

## Setup
    Download de dependências e execução do projeto:
        - flutter pub get
        - flutter pub run build_runner build --delete-conflicting-outputs
        - flutter run

    Execução de testes unitários:
        - flutter test

    Avisos:
        Na camada de módulos (edusoft_app/lib/modules) em 'dio/interceptor/handlers', existe um interceptador de request que realiza os logs de requests & responses, poderá desabilitá-los caso seu console fique poluído;

## Detalhes
    Tempo gasto: 6 horas
    Desafios encontrados: 
        - Resolução do bug de configurações de timeout do dio (https://pub.dev/packages/dio) em execução na Web; 
        - Tomada de decisão quanto a melhor forma de aplicar a paginação já que a api base não dispõem dos recursos previamente paginados;

## Mais
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [online documentation](https://flutter.dev/docs), which offers tutorials,
