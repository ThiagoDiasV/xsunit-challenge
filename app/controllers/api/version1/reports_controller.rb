module Api
    module Version1
        class ReportsController < ApplicationController
            def index 
                @abducted_survivors_percent = Survivor.where(abducted: "yes").count/Survivor.count.to_f*100
                @non_abducted_survivors_percent = Survivor.where(abducted: "no").count/Survivor.count.to_f*100
                @survivors_ordered_by_name_with_abducted_status = Hash.new
                @ids_list = Array.new
                
                for survivor in Survivor.all
                    @ids_list.append survivor.id
                end
                
                for id_value in @ids_list
                    @survivors_ordered_by_name_with_abducted_status[Survivor.find(id_value).name] = Survivor.find(id_value).abducted
                end
                
                data = {
                    'Abducted survivors (%)': @abducted_survivors_percent.round(2), 
                    'Non-abducted survivors (%)': @non_abducted_survivors_percent.round(2),
                    'Survivors': @survivors_ordered_by_name_with_abducted_status.sort.to_h
                }

                render json: {
                    status: "SUCCESS",
                    message: "X-Sunit Reports",
                    data: data
                }, status: :ok

            end
        end 
    end
end