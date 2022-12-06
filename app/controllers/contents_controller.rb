class ContentsController < ApplicationController
  before_action :set_content, only: %i[ show edit update destroy ]

  def index
    @contents = Content.all.order("created_at DESC").paginate(page: params[:page], per_page: 1)
  end

  def show
  end

  def new
    @content = Content.new
  end

  def edit
  end

  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to content_url(@content), notice: "Content was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to content_url(@content), notice: "Content was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url, notice: "Content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_content
      @content = Content.friendly.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:titolo, :descrizione, :price)
    end
end