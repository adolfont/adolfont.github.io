defmodule CalculadoraSaude do
  @moduledoc """
  Documentation for `CalculadoraSaude`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> CalculadoraSaude.hello()
      :world

  """
  def hello do
    :world
  end

  def imc(altura_em_cm, peso_em_kg) do
    altura_em_m = altura_em_cm / 100
    round(10 * peso_em_kg / (altura_em_m * altura_em_m)) / 10
  end

  def peso_normal?(altura_em_cm, peso_em_kg) do
    imc(altura_em_cm, peso_em_kg) >= 18.5 and
      imc(altura_em_cm, peso_em_kg) <= 24.9
  end
end
