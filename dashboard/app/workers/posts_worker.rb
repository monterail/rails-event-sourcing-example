class PostsWorker
  include Sneakers::Worker
  from_queue "dashboard.posts", env: nil

  def work(raw_post)
    RecentPosts.push(raw_post)
    ack!
  end
end
