# Flutter Design Patterns
 Exemplos em flutter com os principais modelos de designs patterns.
 
 Para o desempenho das rotas, estou usando o padrão GetX.

## Singleton 
Garante que uma classe tenha apenas uma instância e fornece um ponto de acesso global para essa instância.

## Factory Method
Define uma interface para criar um objeto, mas permite que as subclasses alterem o tipo de objetos que serão criados.

## Abstract Factory
Fornece uma interface para criar famílias de objetos relacionados ou dependentes sem especificar suas classes concretas.

## Builder
Separa a construção de um objeto complexo de sua representação, permitindo a criação de diferentes representações do mesmo objeto.

## Prototype
Cria novos objetos a partir de um modelo existente, clonando o modelo e modificando conforme necessário.

## Adapter
Permite que objetos com interfaces incompatíveis trabalhem juntos, envolvendo um objeto com uma interface compatível para interagir com outro objeto.

## Decorator
Adiciona responsabilidades adicionais a um objeto dinamicamente, fornecendo uma alternativa flexível à criação de subclasses para estender a funcionalidade.

## Facade
Fornece uma interface unificada para um conjunto de interfaces em um subsistema, simplificando assim o uso desse subsistema.

## Proxy
Fornece um substituto ou representante para outro objeto para controlar o acesso a ele.

## Observer
Define uma dependência um para muitos entre objetos, de modo que quando um objeto muda de estado, todos os seus dependentes são notificados e atualizados automaticamente.

## Command
Encapsula uma solicitação como um objeto, permitindo parametrizar clientes com operações e também permitindo operações serem enfileiradas, registradas e desfeitas.

## Strategy
Define uma família de algoritmos, encapsula cada um deles e os torna intercambiáveis. Permite que o algoritmo varie independentemente dos clientes que o usam.

## State
Permite que um objeto altere seu comportamento quando seu estado interno muda. O objeto parecerá ter mudado sua classe.

## Template Method
Define o esqueleto de um algoritmo em uma operação, adiando alguns passos para subclasses. Permite que as subclasses redefinam certos passos de um algoritmo sem alterar sua estrutura.

## Iterator
Fornece uma maneira de acessar os elementos de um objeto agregado sequencialmente sem expor sua representação subjacente.

## Mediator
Define um objeto que encapsula como um conjunto de objetos interage. Promove o acoplamento fraco ao evitar que objetos se refiram uns aos outros explicitamente e permite variar sua interação independentemente.

## Memento
Permite capturar e restaurar o estado interno de um objeto sem violar o encapsulamento, fornecendo meios para restaurar um objeto para seu estado anterior.
