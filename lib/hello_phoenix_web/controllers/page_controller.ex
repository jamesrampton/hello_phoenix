defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  plug HelloPhoenixWeb.Plugs.Locale, "de"

  def index(conn, _params) do
    conn
    |> put_root_layout("admin.html")
    |> put_flash(:info, "Welcome to Phoenix from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")
  end
end
