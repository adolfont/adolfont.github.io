defmodule CalculadoraSaudeTest do
  use ExUnit.Case
  doctest CalculadoraSaude

  test "cumprimenta o mundo" do
    assert CalculadoraSaude.hello() == :world
  end

  test "O IMC de uma pessoa com 190cm de altura e 150kg de peso é 41.6" do
    assert CalculadoraSaude.imc(190, 150) == 41.6
  end

  test "O IMC de uma pessoa com 150cm de altura e 55kg de peso é 24.4" do
    assert CalculadoraSaude.imc(150, 55) == 24.4
  end

  test "verifica que uma pessoa está na faixa normal de peso de acordo com o IMC" do
    assert CalculadoraSaude.peso_normal?(150, 55)
  end

  test "verifica que uma pessoa não está na faixa normal de peso de acordo com o IMC" do
    refute CalculadoraSaude.peso_normal?(190, 150)
  end
end
