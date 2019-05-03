module Api
    module Version1
        class AbductController < ApplicationController
            
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

            def update

                
                @possible_abducted_survivor = Survivor.find(params[:id])
                
                if @possible_abducted_survivor.update_attributes(abducted_or_not_params)
                    render json: {
                        status: 'SUCCESS',
                        message: 'The survivor abducted status was updated',
                        data: @possible_abducted_survivor
                    }, status: :ok  
                else 
                    render json: {
                        status: 'ERROR',
                        message: 'Survivor not abducted :)',
                        data: @survivor.errors
                    }, status: :unprocessable_entity   
                end
                
            end

            private

            def abducted_or_not_params
                params.permit(:abducted)
            end
        end
    end
end