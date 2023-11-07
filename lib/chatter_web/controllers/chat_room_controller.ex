defmodule ChatterWeb.ChatRoomController do
  use ChatterWeb, :controller

  alias Chatter.Chat

  def index(conn, _params) do
    chat_rooms = Chat.all_rooms()
    render(conn, :index, chat_rooms: chat_rooms)
  end
end
