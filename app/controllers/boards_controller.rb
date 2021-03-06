class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]
  before_action :authenticate_user!
  before_action :admin_user, only: [:new, :edit, :destroy]

  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).boards : Board.all
    @boards = @boards.page(params[:page]).order(created_at: :desc)
  end

  def new
    @board = Board.new(flash[:board])
  end

  def create
    board = Board.new(board_params)
    if board.save
      flash[:notice] = "「#{board.title}」を作成しました"
      redirect_to board
    else
      redirect_to new_board_url, flash: {
        board: board,
        error_messages: board.errors.full_messages
      }
    end
  end

  def show
    @comment = Comment.new(board_id: @board.id)
  end

  def edit
    @board.attributes = flash[:board] if flash[:board]
  end

  def update
    if @board.update(board_params)
      redirect_to @board
    else
      redirect_to edit_board_url, flash: {
        board: @board,
        error_messages: @board.errors.full_messages
      }
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path, flash: { notice: "「#{@board.title}」が削除されました" }
  end

  private

  def board_params
    params.require(:board).permit(:name, :title, :body, :address, :latitude, :longitude, :image, tag_ids: [])
  end

  def set_target_board
    @board = Board.find(params[:id])
  end
  
end
