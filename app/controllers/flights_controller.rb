class FlightsController < ApplicationController
  def index
    @flight_departure_options = Flight.all.sort_by{|f| f.departure_airport.name}.uniq{|f| f.departure_airport.name}.map{|f| [f.departure_airport.name, f.departure_airport.id]}
    @flight_arrival_options = Flight.all.sort_by{|f| f.arrival_airport.name}.uniq{|f| f.arrival_airport.name}.map{|f| [f.arrival_airport.name, f.arrival_airport.id]}
    @flights = Flight.all
    if params[:departure_airport_id].present?
      @flights = @flights.where(departure_airport_id: params[:departure_airport_id])
    end
    if params[:arrival_airport_id].present?
      @flights = @flights.where(arrival_airport_id: params[:arrival_airport_id])
    end
    if params[:date].present?
      @flights = @flights.select do |f|
        d = params[:date].split("-")
        Rails.logger.info d
        Rails.logger.info( f.date.year.to_s + f.date.month.to_s + f.date.day.to_s )
        d[0].to_i == f.date.year && d[1].to_i == f.date.month && d[2].to_i == f.date.day
      end
    end
    if params[:duration].present?
      @flights = @flights.select { |f| f.duration.to_i <= params[:duration].to_i }
    end
  end
end
