module Api
    module Version1
        class AbductController < ApplicationController

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
                    @abduct_score = @possible_abducted_survivor.abduct_score
                    @possible_abducted_survivor.update_attribute(:abduct_score, "#{@abduct_score}")
                    if @abduct_score >= 3
                        @possible_abducted_survivor.abducted = "yes"
                        render json: {
                            status: 'SUCCESS',
                            message: 'The survivor was abducted :(',
                            data: @possible_abducted_survivor
                        }, status: :ok  
                    elsif @abduct_score < 3
                        @possible_abducted_survivor.abducted = "no"
                        render json: {
                            status: 'SUCCESS',
                            message: 'New abducted report :(',
                            data: @possible_abducted_survivor
                        }, status: :ok
                    end
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
                params.permit(:abduct_score)
            end
        end
    end
end