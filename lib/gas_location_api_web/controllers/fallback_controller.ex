defmodule GasLocationApiWeb.FallbackController do
  use GasLocationApiWeb, :controller

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(GasLocationApiWeb.ErrorJSON)
    |> render(:error, status: :not_found)
  end

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(GasLocationApiWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end
end
