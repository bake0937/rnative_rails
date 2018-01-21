class BoardController < ApplicationController
  def readBoardAndUser
    response = {status:true}

    boards = Board.all.order("created_at DESC")
    users = User.all.order("id")
    response[:boards] = boards
    response[:users] = users

    render :json=> response
  end


end
