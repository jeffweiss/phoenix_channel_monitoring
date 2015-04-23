defmodule PhoenixChannelMonitoring.TelemetryChannel do
  use Phoenix.Channel
  # use PhoenixChannelMonitoring, :channel # (for Phoenix > v0.11)
  def join("telemetry:"<>_metric, _auth, socket) do
    Process.flag(:trap_exit, true)
    {:ok, socket}
  end

  def terminate(reason, socket) do
    :ok
  end

end
