defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created!",
             user: %Rockelivery.User{
               address: "Rua Teste",
               age: 27,
               cep: "12123123",
               cpf: "12312312312",
               email: "teste@teste.com",
               id: "7729a729-54d8-46f4-9d57-7e8056dc87a3",
               inserted_at: nil,
               name: "Teste",
               password: "123321",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
