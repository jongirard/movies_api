class Movie < ActiveRecord::Base

  def as_json(options)
		super(:only => [:id, :title, :description, :release_date, :rating, :image]
		)

	end
end
