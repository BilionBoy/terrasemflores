class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy create_comment clear_audio remove_image]

  def index
    @posts = Post.all
  end

  def show
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Post criado com sucesso.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post destruído com sucesso.'
  end

  def create_comment
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to @post, notice: 'Comentário criado com sucesso.'
    else
      redirect_to @post, alert: 'Erro ao criar comentário.'
    end
  end

  def clear_audio
    @post.audio_url = nil
    if @post.save
      flash[:notice] = 'Áudio limpo com sucesso.'
    else
      flash[:alert] = 'Erro ao limpar o áudio.'
    end
    redirect_to edit_post_path(@post)
  end

  def remove_image
    image = @post.images[params[:index].to_i]
    if image.present?
      image.purge
      redirect_to edit_post_path(@post), notice: 'Imagem removida com sucesso.'
    else
      redirect_to edit_post_path(@post), alert: 'Imagem não encontrada.'
    end
  end

  def admin
    @posts = Post.all
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    # Removendo :title pois você não quer mais usá-lo
    params.require(:post).permit(:body, :published_at, :audio_url, images: [])
  end

  def comment_params
    params.require(:comment).permit(:body, :user_name)
  end
end
