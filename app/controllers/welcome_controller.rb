class WelcomeController < ApplicationController
  def index   
    # render layout: false
    @regions = Region.where({state_id: params[:state_id]}) 

    respond_to do |format|
    	format.html
    	format.js
  	end
  end

  def regions
  	@regions = Region.where({state_id: params[:state_id]}).order(:name)
    render json: @regions.to_json
  end

  def search
    result = process_search(params)
    @result_array = []
    practice_name = Practice.where({id: params[:practice_id]}).first.name
    state = State.where({id: params[:state_id]}).first.name
    region = Region.where({id: params[:region_id]}).first
    result.each {|mm_range|
      hash = {
        practice_type: practice_name,
        location: "#{region ? region.name : ''} #{state}",
        mm_range_low: mm_range.low.to_i,
        mm_range_high: mm_range.high.to_i

      }
    @result_array << hash

    }

    logger.info "Result::: #{@result_array.inspect}"
  end


private

  def process_search(params)

    price_range = PriceRange.where({id: params[:range]}).first
    low = (price_range.low * 1000).to_f
    high = (price_range.high * 1000).to_f
    practice_id = params[:practice_id].to_i
    region_id = params[:region_id] ? params[:region_id].to_i : ''
    state_id = params[:state_id].to_i

    if !region_id.blank?
      MmRange.where("practice_id = ? and (region_id = ? and state_id = ?) and (low >=? and high <=?)",practice_id,region_id, state_id, low, high)
    else
      MmRange.where("practice_id = ? and state_id = ? and (low >=? and high <=?)",practice_id, state_id, low, high)
    end  
  end
end
