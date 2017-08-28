class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def show
  end

  def edit
  end


  def create
    @portfolio_item = Portfolio.new(portfolio_params), technologies_attributes: [name:]
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your Portfolio item is now live' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    # Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    end
end

  private

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
