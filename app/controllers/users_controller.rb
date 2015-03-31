class UsersController < ApplicationController
  def index
    @users = []
    #初期表示時ならば何も処理しない。
    if params[:name] && params[:hobby]
      if !params[:hobby].empty?
        if !params[:name].empty?
          #趣味と名前に入力があるのならば以下の処理
          @users = User.search(params[:name],
                                      params[:hobby])
        else
          #趣味のみ入力
          @users = User.search_hobby(params[:hobby])
        end
      else
          #名前のみ入力
          @users = User.search_name(params[:name])
      end
    end
  end
end
