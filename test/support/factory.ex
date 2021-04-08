defmodule Rockelivery.Factory do
  use ExMachina

  def user_params_factory do
    %{
      age: 27,
      address: "Rua Teste",
      cep: "12123123",
      cpf: "12312312312",
      email: "teste@teste.com",
      password: "123321",
      name: "Teste"
    }
  end
end
