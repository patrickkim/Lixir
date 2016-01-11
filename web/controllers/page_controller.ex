defmodule Lixir.PageController do
  use Lixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
