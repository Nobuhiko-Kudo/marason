class MembersController < ApplicationController

  def index
    if params[:name_kana] && params[:select_group]
      if !params[:name_kana].empty?
        if !params[:select_group].empty?
          @members = Member.search(params[:name_kana],params[:select_group])
          binding.pry
        else
          @members = Member.search_kana(params[:name_kana])
          binding.pry
        end
      else
        if !params[:select_group].empty?
          @members = Member.search_group(params[:select_group])
          binding.pry
        else
          @members = Member.search_kana(params[:name_kana])
          binding.pry
        end
      end
    end
  end
end
