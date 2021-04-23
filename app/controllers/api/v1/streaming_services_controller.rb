module Api
    module V1
    class StreamingServiceController < ApplicationController
        protect_from_forgery with: :null_session
        
        def index
            streaming_services = StreamingService.all
            
            render json: StreamingService.new(streaming_services, options).serialized_json
        end

        def show
            streaming_service = StreamingService.find_by(title: params[:title])
            
            render json: StreamingService.new(streaming_service, options).serialized_json
        end

        def create
        end

        private 

        def streaming_service_params
            params.require(:airline).permit(:score, :price)
        end

        def options
            @options ||= { include: %i[reviews] }

    end
  end
end