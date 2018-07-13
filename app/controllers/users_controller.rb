class UsersController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do
        render pdf:  "pdffile",
               layout: 'layouts/pdf.html.erb',
               show_as_html: params[:debug].present?
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
