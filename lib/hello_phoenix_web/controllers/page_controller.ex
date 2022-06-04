defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  plug HelloPhoenixWeb.Plugs.Locale, "de"

  def index(conn, _params) do
    conn
    |> put_root_layout("admin.html")
    |> render("index.html")
  end
end
