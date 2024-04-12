class FailingJob < ApplicationJob
  rescue_from StandardError do |exception|
    Rails.logger.info "Rescuing"
    true
  end

  def perform(*args)
    Rails.logger.info "FailingJob is running"
    raise "This job always fails"
  end
end
