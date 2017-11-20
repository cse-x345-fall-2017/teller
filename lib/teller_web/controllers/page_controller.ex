defmodule TellerWeb.PageController do
  use TellerWeb, :controller

  def index(conn, _params) do
    { fortune, _ } = System.cmd("fortune", [])
    render conn, "index.html", fortune: fortune
  end
end
