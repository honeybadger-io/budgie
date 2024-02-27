Yabeda.configure do
  # matches all metrics in all groups
  default_tag :environment, Rails.env

  counter :topics_created, comment: "Number of topics created"

  register_adapter(:honeybadger_insights, Yabeda::HoneybadgerInsights::Adapter.new)
end
