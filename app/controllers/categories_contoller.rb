class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'   

    ## Categories Routes
    get "/categories" do
        categories = Category.all
        categories.to_json
        # categories.to_json(include: [:categories, :purchases])
    end

    post '/categories' do
        category = Category.create({
            name: params[:name],
            description: params[:description]
        })
        if category.save
          redirect "/categories"
        else
          # Handle errors
        end
    end

  private

  # Method to permit only the selected fields for update
  def partial_category_params
    params.slice(:name, :description)
  end
end