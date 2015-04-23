defmodule PhoenixChannelMonitoring.PageController do
  use PhoenixChannelMonitoring.Web, :controller
  require Logger

  plug :action

  def index(conn, _params) do
    :random.seed(:erlang.now)
    :timer.sleep(:random.uniform(50))
    Logger.debug "#{conn.private.phoenix_controller}##{conn.private.phoenix_action}"
    render conn, "index.html"
  end
end
