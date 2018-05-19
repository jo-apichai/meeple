class Admin
  class PublishersController < BaseController
    before_action :find_publisher, only: [:edit, :update, :destroy]

    def index
      @publishers = Publisher.page(params[:page])
    end

    def new
      @publisher = Publisher.new
    end

    def create
      @publisher = Publisher.new publisher_params

      if @publisher.save
        redirect_to admin_publishers_path, notice: t('.success')
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @publisher.update publisher_params
        redirect_to admin_publishers_path, notice: t('.success')
      else
        render :edit
      end
    end

    def destroy
      @publisher.destroy
      redirect_to admin_publishers_path, notice: t('.success')
    end

    private def find_publisher
      @publisher = Publisher.find_by_slug params[:id]
    end

    private def publisher_params
      params.require(:publisher).permit(
        :name,
        :website
      )
    end
  end
end
