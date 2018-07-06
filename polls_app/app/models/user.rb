# == Schema Information
#
# Table name: users
#
#  id                                                                               :integer          not null, primary key
#  created_at                                                                       :datetime         not null
#  updated_at                                                                       :datetime         not null
#  username                                                                         :string
#  #<ActiveRecord::ConnectionAdapters::SQLite3::TableDefinition:0x00007fc6004bf730> :string
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  
  has_many :authored_polls,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :Poll
    
  has_many :responses,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Response
    
end
