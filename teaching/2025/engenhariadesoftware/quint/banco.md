
# banco.qnt

[Quint é uma linguagem de especificação moderna e executável.](https://quint-lang.org/) O exemplo abaixo é uma tradução e adaptação do exemplo no [Getting Started](https://quint-lang.org/docs/getting-started) de Quint.

Para testar, basta instalar o Quint e executar:

```
quint run banco.qnt --invariant=sem_saldos_negativos
quint run banco.qnt --invariant=sem_ricaco
quint run banco.qnt --invariant=sem_saldos_negativos --mbt
quint run banco.qnt --invariant=sem_ricaco --mbt
```

E, claro, para você ver o Quint funcionar e encontrar problemas, você precisa comentar as seguintes linhas:

```quint
//   saldos.get(conta) + quantidade <= 500,
//   saldos.get(conta) >= quantidade,
```

Rode os comandos acima com a sem as linhas comentadas.


```quint
module banco {
  // Uma variável de estado para armazenaro saldo de cada conta
  var saldos: str -> int
 
  pure val CLIENTES = Set("joao", "maria", "marta", "pedro")
 
  action depositar(conta, quantidade) = all {
    saldos.get(conta) + quantidade <= 500,
    // Incrementar o saldo da conta pela quantidade
    saldos' = saldos.setBy(conta, atual => atual + quantidade)
  }
 
  action sacar(conta, quantidade) = all {
    saldos.get(conta) >= quantidade,
    // Diminui o saldo da conta pela quantidade
    saldos' = saldos.setBy(conta, atual => atual - quantidade)
  }
  
 
 
  action init = {
    // No estado inicial, todos os saldos são 100
    saldos' = CLIENTES.mapBy(_ => 100)
  }
 
  action step = {
    // Não deterministicamente escolha um cliente e uma quantidade
    nondet conta = CLIENTES.oneOf()
    nondet quantidade = 1.to(100).oneOf()
    // Não deterministicamente escolha de vai depositar ou sacar
    any {
      depositar(conta, quantidade),
      sacar(conta, quantidade),
    }
  }
 
  // Uma invariante afirmando que todoas as contas devem ter saldo não negativo
  val sem_saldos_negativos = CLIENTES.forall(cliente => saldos.get(cliente) >= 0)

  val sem_ricaco = CLIENTES.forall(cliente => saldos.get(cliente) <= 500)
}
```