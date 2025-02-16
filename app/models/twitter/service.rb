module Twitter
  class Service
    def initialize(account, affiliate)
      @account = account
      @affiliate = affiliate

      freeze
    end

    def post_with_affiliate
      posts = @account.posts.new.create_with_affiliate

      post_twitter(posts)
    end

    private

    def post_twitter(posts)
      # post /api
    end
  end
end
