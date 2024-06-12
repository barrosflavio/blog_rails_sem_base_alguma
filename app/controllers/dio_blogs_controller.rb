class DioBlogsController < ApplicationController
  before_action :set_dio_blog, only: %i[ show edit update destroy ]

  # GET /dio_blogs or /dio_blogs.json
  def index
    @dio_blogs = DioBlog.all
  end

  # GET /dio_blogs/1 or /dio_blogs/1.json
  def show
  end

  # GET /dio_blogs/new
  def new
    @dio_blog = DioBlog.new
  end

  # GET /dio_blogs/1/edit
  def edit
  end

  # POST /dio_blogs or /dio_blogs.json
  def create
    @dio_blog = DioBlog.new(dio_blog_params)

    respond_to do |format|
      if @dio_blog.save
        format.html { redirect_to dio_blog_url(@dio_blog), notice: "Livro favorito criado." }
        format.json { render :show, status: :created, location: @dio_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dio_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dio_blogs/1 or /dio_blogs/1.json
  def update
    respond_to do |format|
      if @dio_blog.update(dio_blog_params)
        format.html { redirect_to dio_blog_url(@dio_blog), notice: "Livro favorito atualizado." }
        format.json { render :show, status: :ok, location: @dio_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dio_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dio_blogs/1 or /dio_blogs/1.json
  def destroy
    @dio_blog.destroy!

    respond_to do |format|
      format.html { redirect_to dio_blogs_url, notice: "Livro favorito excluido." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dio_blog
      @dio_blog = DioBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dio_blog_params
      params.require(:dio_blog).permit(:title, :author, :note, :description, :text)
    end
end
