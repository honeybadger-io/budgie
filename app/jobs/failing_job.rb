class FailingJob < ApplicationJob
  def perform(*args)
    raise "This job always fails"
  end
end
