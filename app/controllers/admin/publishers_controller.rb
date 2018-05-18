class Admin
  class PublishersController < BaseController
    def index
      @publishers = Publisher.all
    end
  end
end
