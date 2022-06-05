defmodule HelloPhoenixWeb.PageView do
  use HelloPhoenixWeb, :view
  use Phoenix.Component

  def country(assigns) do
    ~H"""
    <p>You live in <%= assigns.country %></p>
    """
  end
end
