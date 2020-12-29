defmodule TaskidDemoAppWeb.PageController do
  use TaskidDemoAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
