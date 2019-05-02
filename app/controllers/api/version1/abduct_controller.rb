module Api
    module Version1
        class AbductController < ApplicationController
                        
            def update
                @possible_abducted_survivor = Survivor.find(params[:id])
                @survivors_report_array = Survivor.find(survivor_report_abduction)
                if @possible_abducted_survivor.update_attributes(abducted_or_not_params) && @survivor_report_array
                    render json: {
                        status: 'SUCCESS',
                        message: 'The survivor was abducted :(',
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

            def survivor_report_abduction
                params["Survivor"].each do |id|
                    Survivor.find(id)
                end
            end
        end
    end
end