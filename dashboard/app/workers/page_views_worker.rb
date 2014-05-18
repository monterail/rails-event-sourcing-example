class PageViewsWorker
  include Sneakers::Worker
  from_queue "dashboard.page_views", env: nil

  def work(raw_data)
    PageViews.record(raw_data)
    ack!
  end
end
