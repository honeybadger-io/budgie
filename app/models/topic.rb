class Topic < ApplicationRecord
  after_create -> { Yabeda.topics_created.increment({}) }
end
