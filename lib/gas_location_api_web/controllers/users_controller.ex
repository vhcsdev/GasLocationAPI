defmodule GasLocationApiWeb.UsersController do
  use GasLocationApiWeb, :controller
  alias GasLocationApi.Users
  alias Users.User
  alias GasLocationApiWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Users.create(params) do
      conn
      |> put_status(:created)
      |> render(:create, user: user)
    end
  end
end
