module Spina
  module Admin
    class NewslletersController < AdminController
      before_filter :set_breadcrumb

      layout "spina/admin/website"

      def show
        @newsletter = Newsletter.find(params[:id])
      end

      def index
        @newsletter = Newsletter.ordered
      end

      def destroy
        @newsletter = Newsletter.find(params[:id])
        @newsletter.destroy
        redirect_to spina.admin_newsletters_url, notice: "Newsletter destroyed!"
      end

      private

      def set_breadcrumb
        add_breadcrumb "Newsletters", spina.admin_newsletters_path
      end

      def newsletter_params
        params.require(:newsletter).permit(:name, :email)
      end
    end
  end
end
