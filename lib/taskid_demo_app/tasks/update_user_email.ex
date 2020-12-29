defmodule TaskidDemoApp.Tasks.UpdateUserEmail do
  @behaviour Taskid.Task

  @impl true
  def name, do: "Update the email of a user"

  @impl true
  def description, do: "Updates the email of a given user"

  @impl true
  def inputs do
    [
      Taskid.Task.Input.Text.define(%{
        id: "email",
        label: "New email",
        default: nil,
        hint: "The new email of the user",
        placeholder: "email@example.com",
      })
    ]
  end

  @impl true
  def run(%{"email" => email}) do
    IO.inspect(email)

    if :random.uniform() < 0.5 do
      {:ok, "The user email has been updated successfully"}
    else
      {:ok, "There was an error when updating the user email"}
    end
  end
end
