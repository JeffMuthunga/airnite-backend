class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/properties' do
        properties = Property.all
        properties.to_json(
            include: {
                reviews: {
                    include: :user
                }
            })
    end

    get '/properties/:id' do 
        property = Property.find(params[:id])
        property.to_json(
          include: {
            reviews: {
              include: :user
            }
          }
        )
      end


    patch '/properties/:id' do
      property = Property.find(params[:id])
      property.update(price: params[:price])
      property.to_json(
          include: {
            reviews: {
              include: :user
            }
          }
        )
    end

    delete '/properties/:id' do
      property = Property.find(params[:id])
      property.destroy
      property.to_json
    end

    post '/properties' do
      property = Property.create(
        title: params[:title],
        bedrooms: params[:bedrooms],
        sqrfeet: params[:sqrfeet],
        city: params[:city],
        price: params[:price],
        description: params[:description],
        image: params[:image]
      )
      property.to_json(
          include: {
            reviews: {
              include: :user
            }
          }
        )
    end

    post '/reviews' do
      review = Review.create(
        star_rating: params[:star_rating],
        comment: params[:comment],
        property_id: params[:property_id],
        user_id: params[:user_id]
      )
      review.to_json
    end

    post '/users' do
      user = User.create(
        name: params[:name]
      )
      user.to_json
    end
      


end