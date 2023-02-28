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
      



end