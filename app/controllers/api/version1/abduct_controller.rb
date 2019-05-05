module Api
    module Version1
        class AbductController < ApplicationController

            def update
                
                @possible_abducted_survivor = Survivor.find(params[:id])

                not_abducted_survivors_list = Array.new
                for survivor in Survivor.all
                    if survivor.abducted == "no"
                        not_abducted_survivors_list.append survivor.name 
                    end
                end

                @possible_abducted_survivor.update_attribute(
                                                             :last_survivor_name_abduct_report, 
                                                             @possible_abducted_survivor.last_survivor_name_abduct_report
                                                             )
                                                             
                @survivor_name_report = @possible_abducted_survivor.last_survivor_name_abduct_report
                
                if @possible_abducted_survivor.update_attributes(survivor_report_abduction_name_params)
                    if not_abducted_survivors_list.include? @survivor_name_report
                        @abduct_score = @possible_abducted_survivor.abduct_score
                        @abduct_score += 1
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
                    end
                else 
                    render json: {
                        status: 'ERROR',
                        message: 'Survivor not abducted :)',
                        data: @possible_abducted_survivor.errors
                    }, status: :unprocessable_entity   
                end
                
            end

            private

            def survivor_report_abduction_name_params
                params.permit(:last_survivor_name_abduct_report)
            end
        end
    end
end