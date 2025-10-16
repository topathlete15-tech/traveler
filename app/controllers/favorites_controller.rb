class FavoritesController < ApplicationController
    def create
        post = Post.find(params[:post_id])
        favorites = current_user.favorites.new(post_id: post.id)
        favorites.save
        redirect_to post_path(post)
    end

    def destroy
        post = Post.find(oarams[:post_id])
        favorite = current_user.favorites.find_by(post_id: post.id)
        favorite.destroy
        redirect_to post_path(post)
    end
end