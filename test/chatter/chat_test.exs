defmodule Chatter.ChatTest do
  use Chatter.DataCase, async: true

  import Chatter.Factory

  alias Chatter.Chat

  describe "all_rooms/0" do
    test "returns all the available rooms" do
      [room2, room2] = insert_pair(:chat_room)

      rooms = Chat.all_rooms()

      assert room1 in rooms
      assert room2 in rooms
    end
  end
end
