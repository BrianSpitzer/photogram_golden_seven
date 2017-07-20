# == Schema Information
#
# Table name: samples
#
#  id         :integer          not null, primary key
#  caption    :text
#  source     :string
#  when       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sample < ApplicationRecord
end
