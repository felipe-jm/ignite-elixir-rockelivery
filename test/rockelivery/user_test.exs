defmodule Rockelivery.UserTest do
  use Rockelivery.DataCase, async: true

  alias Ecto.Changeset
  alias Rockelivery.User

  describe "changeset/2" do
    test "when all params are valid, returns a valid changeset" do
      params = %{
        age: 27,
        address: "Rua Teste",
        cep: "12123123",
        cpf: "12312312312",
        email: "teste@teste.com",
        password: "123321",
        name: "Teste"
      }

      response = User.changeset(params)

      assert %Changeset{changes: %{name: "Teste"}, valid?: true} = response
    end

    test "when updating a changeset, returns a valid changeset with the given changes" do
      params = %{
        age: 27,
        address: "Rua Teste",
        cep: "12123123",
        cpf: "12312312312",
        email: "teste@teste.com",
        password: "123321",
        name: "Teste"
      }

      update_params = %{name: "Teste atualizado", password: "123123"}

      response =
        params
        |> User.changeset()
        |> User.changeset(update_params)

      assert %Changeset{changes: %{name: "Teste atualizado"}, valid?: true} = response
    end

    test "when there are some error, returns an invalid changeset" do
      params = %{
        age: 10,
        address: "Rua Teste",
        cep: "12123123",
        cpf: "12312312312",
        email: "teste@teste.com",
        password: "123",
        name: "Teste"
      }

      response = User.changeset(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["should be at least 6 character(s)"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
