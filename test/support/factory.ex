defmodule Chatter.Factory do
  use ExMachina.Ecto, repo: Chatter.Repo

  def chat_room_factory do
    %Chatter.Chat.Room{
      # generates auto-incrementing values
      name: sequence(:name, &"chat room #{&1}")
    }
  end
end
