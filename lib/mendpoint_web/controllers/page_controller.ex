defmodule MendpointWeb.PageController do
  use MendpointWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
