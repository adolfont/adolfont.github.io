
# banco.qnt

```quint
module banco {
  /// Uma variável de estado para armazenaro saldo de cada conta
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