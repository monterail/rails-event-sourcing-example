module Blog
  class PostsWorker
    include Sneakers::Worker
    from_queue "admin.posts", env: nil

    def work(raw_post)
      params = JSON.parse(raw_post)

      Blog::Post.where(id: params["id"]).first_or_initialize.tap do |post|
        post.title = params["title"]
        post.save!
      end

      ack!
    end
  end
end
