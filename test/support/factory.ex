defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

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

  def user_factory do
    %User{
      age: 27,
      address: "Rua Teste",
      cep: "12123123",
      cpf: "12312312312",
      email: "teste@teste.com",
      password: "123321",
      name: "Teste",
      id: "7729a729-54d8-46f4-9d57-7e8056dc87a3"
    }
  end
end
