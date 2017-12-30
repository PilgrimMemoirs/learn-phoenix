defmodule Mgg.PageController do
  use Mgg.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
