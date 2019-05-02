module Api
    module Version1
        class SurvivorsController < ApplicationController
            def index 
                @survivors = Survivor.order('name ASC')
                render json: {
                    status: 'SUCCESS',
                    message: 'Loaded survivors',
                    data: @survivors
                }, status: :ok
            end

            def show
                @survivor = Survivor.find(params[:id])
                render json: {
                    status: 'SUCCESS',
                    message: 'Loaded survivor',
                    data: @survivor
                }, status: :ok
            end

            def create 
                @survivor = Survivor.new(survivor_params)

                if @survivor.save
                    render json: {
                        status: 'SUCCESS',
                        message: 'Survivor created successfully',
                        data: @survivor
                    }, status: :ok
                else
                    render json: {
                        status: 'ERROR',
                        message: 'Survivor not created',
                        data: @survivor.errors
                    }, status: :unprocessable_entity
                end
            end

            def update
                @survivor = Survivor.find(params[:id])
                if @survivor.update_attributes(last_location_params)
                    render json: {
                        status: 'SUCCESS',
                        message: 'Last location updated successfully',
                        data: @survivor
                    }, status: :ok  
                else
                    render json: {
                        status: 'ERROR',
                        message: 'Last location not updated',
                        data: @survivor.errors
                    }, status: :unprocessable_entity
                end
            end

            private

            def survivor_params
                params.permit(:name, :age, :gender, :latitude, :longitude, :abducted)
            end

            def last_location_params
                params.permit(:latitude, :longitude)
            end

        end
    end
end