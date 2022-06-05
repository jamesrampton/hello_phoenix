defmodule HelloPhoenixWeb.PageView do
  use HelloPhoenixWeb, :view
  use Phoenix.Component

  def country(assigns) do
    ~H"""
    <p>You live in <%= assigns.country %></p>
    """
  end

  def render("index.html", assigns) do
    "rendering with assigns #{inspect(Map.keys(assigns))}"
  end
end
