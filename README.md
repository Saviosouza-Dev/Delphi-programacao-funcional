# 🧠 Delphi - Programação Funcional com VCL

Este projeto é um exemplo prático de como aplicar conceitos de **programação funcional** em Delphi, utilizando a biblioteca visual **VCL**. Ele foi inspirado no Capítulo 1 do livro *"Aprenda Programação Funcional"* de Jack Widman.

## 🎯 Objetivo

Criar uma aplicação visual simples que permita ao usuário:

- Inserir uma lista de números inteiros
- Aplicar transformações funcionais:
  - 🔁 Dobrar os valores
  - 🔍 Filtrar apenas os números pares
  - ➕ Somar os quadrados dos valores
- Visualizar os resultados em tempo real

## 🖼️ Interface

A interface é composta por:

- `TEdit` para entrada dos números (separados por vírgula)
- `TButton` para cada transformação funcional
- `TMemo` para exibir os resultados
- `TButton` adicional para limpar os campos

## 🧩 Conceitos Funcionais Aplicados

- **Imutabilidade:** Nenhuma lista é modificada diretamente
- **Funções puras:** Cada transformação depende apenas da entrada
- **Transparência referencial:** A mesma entrada sempre gera o mesmo resultado
- **Separação de responsabilidades:** Entrada, processamento e saída estão bem definidos

## 🚀 Como executar

1. Abra o projeto `PFuncional.dpr` no Delphi (versão 10.x ou superior recomendada)
2. Compile e execute
3. Digite uma lista de números separados por vírgula (ex: `1, 2, 3, 4`)
4. Clique nos botões para aplicar as transformações

## 📁 Estrutura do Projeto

<pre>```pensando-funcionalmente/├── PFuncional.dpr           # Arquivo principal do projeto├── PFuncional.dproj         # Configurações do projeto├── unFuncional.pas          # Código-fonte com a lógica funcional├── unFuncional.dfm          # Formulário visual└── __history/               # Arquivos de backup do Delphi (podem ser ignorados)```</pre>
