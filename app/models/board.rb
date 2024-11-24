# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  integer    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :string
#
class Board < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: "user_id"
  )
end
