defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  plug HelloPhoenixWeb.Plugs.Locale, "de"

  def index(conn, _params) do
    attributes = %{"class" => "foo", "id" => "bar"}

    conn
    |> put_root_layout("admin.html")
    |> put_flash(:info, "Welcome to Phoenix from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html", attributes: attributes)
  end
end
