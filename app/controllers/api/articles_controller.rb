module Api
    class ArticlesController < ApplicationController
        def index
            articles = Article.all
            render json: {status: 'DONE', message: 'Loaded all articles', data:articles},status: :ok
        end

        def show
            article = Article.find(params[:id])
            render json: {status: 'DONE', message: 'Loaded article', data:article},status: :ok
        end

        def create
            article = Article.new(article_params)
            if article.save
                render json: {status: 'DONE', message: 'Saved Article', data:article},status: :ok
            else
                render json: {status: 'FAIL', message: 'article not saved', data:article.errors},status: :unprocessable_entity
            end
        end

        def destroy
            article = Article.find(params[:id])
            article.destroy
            render json: {status: 'DONE', message: 'Deleted article', data:article},status: :ok
        end

        def update
            article = Article.find(params[:id])
            if article.update(article_params)
                render json: {status: 'DONE', message: 'Updated article', data:article},status: :ok
            else
                render json: {status: 'FAIL', message: 'article not updated', data:article.errors},status: :unprocessable_entity
            end
        end
        
        private 
        def article_params
            params.permit(:title, :body)
        end
    end
end