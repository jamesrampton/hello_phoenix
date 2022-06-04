defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  plug HelloPhoenixWeb.Plugs.Locale, "de"

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
