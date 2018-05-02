class StatementsController < ApplicationController
  def index
    @statements = Statement.all

    respond_to do |format|
      format.html
      format.csv { send_data @statements.to_csv, filename: "statements-#{Date.today}.csv" }
    end
  end

  def destroy
    Statement.destroy_all
    redirect_to statements_index_path
  end

  def import
    Statement.import(params[:file])
    redirect_to statements_index_path, notice: "Statement data imported!"
  end

  def upload
  end
end

