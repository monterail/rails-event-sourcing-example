module Blog
  class PostsWorker
    include Sneakers::Worker
    from_queue "admin.posts", env: nil

    def work(raw_post)
      Blog::Post.create!(raw_post)
      ack!
    end
  end
end
