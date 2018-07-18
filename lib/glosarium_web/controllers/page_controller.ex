defmodule GlosariumWeb.PageController do
  use GlosariumWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
