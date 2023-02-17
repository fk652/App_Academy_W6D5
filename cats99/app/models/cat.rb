# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
  CAT_COLOR = ['gray', 'black', 'white', 'blue', 'purple', 'brown']

  validates :birth_date, :color, :name, :sex, presence: true
  validate :birth_date_cannot_be_future, :valid_cat_color, :valid_sex

  def birth_date_cannot_be_future
    if birth_date > Date.today
      errors.add("Birthday can't be in the future")
    end
  end

  def valid_cat_color
    if !CAT_COLOR.include?(color)
      errors.add("Invalid color")
    end
  end

  def valid_sex
    if !['M', 'F'].include?(sex)
      errors.add("Invalid sex")
    end
  end

  def age
    ((Date.today - birth_date)/365.0).round
    # time_ago_in_words(Time.now - Date.new(2001, 2, 3).year, include_years: true)
  end
end
