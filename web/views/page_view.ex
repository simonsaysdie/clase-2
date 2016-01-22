defmodule Clase2.PageView do
  use Clase2.Web, :view

  def twitter_url(username) do
  	"http://twitter.com/" <> username
  end

  def twitter_label(username) do
  	"Check " <> username <> "'s tweets!"
  end
end
