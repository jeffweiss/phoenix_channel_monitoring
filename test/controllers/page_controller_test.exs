defmodule PhoenixChannelMonitoring.PageControllerTest do
  use PhoenixChannelMonitoring.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert conn.resp_body =~ "Welcome to Phoenix!"
  end
end
