defmodule LivetypingWeb.PageController do
  use LivetypingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
