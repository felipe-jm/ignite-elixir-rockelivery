defmodule RockeliveryWeb.UsersControllerTest do
  use RockeliveryWeb.ConnCase, async: true

  import Rockelivery.Factory

  describe "create/2" do
    test "when all params are valid, creates the user", %{conn: conn} do
      params = %{
        "age" => 27,
        "address" => "Rua Teste",
        "cep" => "12123123",
        "cpf" => "12312312312",
        "email" => "teste@teste.com",
        "password" => "123321",
        "name" => "Teste"
      }

      response =
        conn
        |> post(Routes.users_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "User created!",
               "user" => %{
                 "address" => "Rua Teste",
                 "age" => 27,
                 "cep" => "12123123",
                 "cpf" => "12312312312",
                 "email" => "teste@teste.com",
                 "id" => _id,
                 "name" => "Teste"
               }
             } = response
    end

    test "when there is any error, returns an error", %{conn: conn} do
      params = %{
        "password" => "123321",
        "name" => "Teste"
      }

      response =
        conn
        |> post(Routes.users_path(conn, :create, params))
        |> json_response(:bad_request)

      expected_response = %{
        "message" => %{
          "address" => ["can't be blank"],
          "age" => ["can't be blank"],
          "cep" => ["can't be blank"],
          "cpf" => ["can't be blank"],
          "email" => ["can't be blank"]
        }
      }

      assert response == expected_response
    end
  end
end
