defmodule PhoenixChannelMonitoring.Router do
  use Phoenix.Router

  socket "/ws", PhoenixChannelMonitoring do
    channel "telemetry:*", TelemetryChannel
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixChannelMonitoring do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixChannelMonitoring do
  #   pipe_through :api
  # end
end
