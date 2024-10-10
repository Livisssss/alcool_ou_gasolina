# Álcool ou Gasolina?

Um aplicativo simples desenvolvido em Flutter que ajuda os usuários a decidir se é mais vantajoso abastecer com álcool ou gasolina com base nos preços informados.

## Descrição

O usuário insere os preços do álcool e da gasolina, e o aplicativo calcula qual é a melhor opção. O resultado é exibido em uma nova tela, informando se o álcool ou a gasolina é a escolha mais vantajosa.

## Funcionalidades

- **Entrada de Dados**: O usuário pode inserir os preços do álcool e da gasolina.
- **Cálculo de Vantagem**: O aplicativo realiza o cálculo para determinar a opção mais vantajosa com base na regra: 
  - O preço do álcool deve ser menor que 70% do preço da gasolina para ser considerado a melhor opção.
- **Resultados Visuais**: O resultado é exibido em uma nova tela com uma mensagem clara e uma imagem correspondente.

## Regras do Cálculo

- Se o preço do álcool for menor que 70% do preço da gasolina, o álcool é mais vantajoso.
- Caso contrário, a gasolina é mais vantajosa.

## Tecnologias Utilizadas

- **Flutter**: Para o desenvolvimento do aplicativo.
- **Dart**: Linguagem de programação utilizada no Flutter.
