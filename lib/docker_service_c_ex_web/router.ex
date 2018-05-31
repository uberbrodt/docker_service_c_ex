defmodule DockerServiceCExWeb.Router do
  use DockerServiceCExWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DockerServiceCExWeb do
    pipe_through :api
  end
end
