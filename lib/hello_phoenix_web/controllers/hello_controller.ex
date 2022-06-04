defmodule HelloPhoenixWeb.HelloController do
  use HelloPhoenixWeb, :controller

  plug HelloPhoenixWeb.Plugs.Locale, "fr" when action in [:show]

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    # plain text response
    # text(conn, "From messenger #{messenger}")

    # json response
    # json(conn, %{id: messenger})

    # html response - unsafe, won't include csrf etc, I think
    # html(conn, "<h1>From messenger #{messenger}</h1>")

    # proper Phoenix view response
    # render(conn, "show.html", messenger: messenger)

    # alternative Phoenix view rendering with added assigns
    conn
    |> assign(:messenger, messenger)
    |> assign(:reciever, "dude")
    |> render("show.html")
  end
end
