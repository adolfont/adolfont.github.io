---
theme: gaia
_class: lead
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.svg')
---

![bg left:40% 80%](https://adolfont.github.io/images/AdolfoNeto_240x240.jpg)

# TDD na Prática com Elixir
### Desenvolvendo Código Limpo e Confiável

Adolfo Neto

https://adolfont.github.io/


<!--

Mini-bio:

Adolfo Neto é Professor Associado na Universidade Tecnológica Federal do Paraná. Sua pesquisa em Engenharia de Software tem como foco ajudar desenvolvedores a compartilhar conhecimento e adquirir tanto expertise científica quanto prática.

É co-criador e coapresentador dos podcasts Fronteiras da Engenharia de Software, Elixir em Foco e Emílias Podcast – Mulheres na Computação (todos em português), além de co-criador e coapresentador do Hello, Erlang! e criador e apresentador do Professor Adolfo Neto.

Título:
TDD na Prática com Elixir: Desenvolvendo Código Limpo e Confiável

Resumo:
Nesta palestra, apresentarei como aplicar Test-Driven Development (TDD) no dia a dia usando a linguagem Elixir. Passaremos por um exemplo prático, partindo da escrita de testes antes da implementação, evoluindo o código em pequenos passos e garantindo feedback rápido com a suíte de testes. Durante a demonstração, discutirei boas práticas, armadilhas comuns e como o ecossistema do Elixir facilita a adoção do TDD para criar software mais robusto, legível e fácil de manter.
>


<!-- 

```elixir
defmodule DistributedHelloWorldTest do
  use ExUnit.Case
  doctest DistributedHelloWorld

  test "greets the world" do
    assert DistributedHelloWorld.hello() == :world
  end
end

```

-->

---

<!-- paginate: true -->

# Quem sou eu?

- Egresso UFAL, UFPE e USP
- Professor da UTFPR Curitiba
- [Fronteiras da Engenharia de Software](https://fronteirases.github.io/)


---

# [Elixir](https://elixir-lang.org/)

- [José Valim](https://github.com/josevalim) – Criador da linguagem Elixir e membro fundador da Erlang Ecosystem Foundation.
- [Erlang](https://www.erlang.org/) – Linguagem de programação funcional sobre a qual o Elixir é construído, conhecida por sistemas distribuídos e tolerância a falhas.
- [Elixir em Foco](https://www.elixiremfoco.com) – Podcast da comunidade brasileira de Elixir  
- [Erlang Ecosystem Foundation (EEF)](https://erlef.org/) – Organização sem fins lucrativos que apoia e promove o ecossistema Erlang e Elixir.

---

# [Elixir](https://elixir-lang.org/)


- [Programação funcional](https://en.wikipedia.org/wiki/Functional_programming) – Paradigma de programação central no Elixir, baseado em funções puras e imutabilidade.
- [Sistemas concorrentes](https://hexdocs.pm/elixir/processes.html) – Um dos grandes fortes do Elixir, graças à BEAM (EVM), a máquina virtual do Erlang, que permite milhares de processos leves e isolados.

---


# Testes automatizados

- **Código que testa outro código** – Prática de desenvolvimento em que se escreve código para verificar automaticamente se o código principal funciona como esperado.
- [xUnit](https://en.wikipedia.org/wiki/XUnit) – Família de frameworks de teste unitário que seguem o padrão original do JUnit, presente em várias linguagens
- [JUnit](https://junit.org/junit5/) – Framework de testes para Java, pioneiro no modelo xUnit e amplamente usado no ecossistema JVM.
- [ExUnit](https://hexdocs.pm/ex_unit/ExUnit.html) – Framework de testes embutido no Elixir, simples e poderoso, usado para testar aplicações funcionais com suporte a assertions, mocks (via bibliotecas como Mox) e testes assíncronos.

---

# Desenvolvimento Guiado por Testes

- Métodos Ágeis
- Extreme programming
- Test-driven development (TDD)
- Ciclo Red-Green-Refactor
- Passos de Bebê
- Coding Dojo

---

# Vamos à prática

- mix new <nome do projeto>
- mix test

---

# De volta

---

# Mestrado Profissional em Computação Aplicada 

- <https://ppgca.ct.utfpr.edu.br/>

# Rede Emílias de Podcasts

- <https://fronteirases.github.io/redeemilias>

---

![bg left:40% 80%](https://adolfont.github.io/images/AdolfoNeto_240x240.jpg)

# TDD na Prática com Elixir
### Desenvolvendo Código Limpo e Confiável

Adolfo Neto

https://adolfont.github.io/

adolfo@utfpr.edu.br