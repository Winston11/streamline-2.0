module Api
    module V1
    class SelectionController < ApplicationController
        protect_from_forgery with: :null_session
        before_action :define_variable, only: [:show, :index]
        
        def index
            selections = Selection.all
            
            render json: Selection.new(streaming_services, options).serialized_json
        end

        def show
            selection = Selection.find_by(title: params[:title])
            
            render json: Selection.new(streaming_service, options).serialized_json
        end

        private 

        def streaming_service_params
            params.require(:airline).permit(:score, :price)
        end

        def define_variable
    
            @selection = Selection.find(params[:id])
    
        end

        def options
            @options ||= { include: %i[reviews] }

    end
  end
end