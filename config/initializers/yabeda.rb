Yabeda.configure do
  # matches all metrics in all groups
  default_tag :environment, Rails.env

  register_adapter(:honeybadger_insights, Yabeda::HoneybadgerInsights::Adapter.new)
end
