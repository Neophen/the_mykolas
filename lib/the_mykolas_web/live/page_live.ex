defmodule TheMykolasWeb.PageLive do
  use TheMykolasWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, [])}
  end
end
