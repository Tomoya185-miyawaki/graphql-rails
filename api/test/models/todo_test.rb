# == Schema Information
#
# Table name: todos
#
#  id         :bigint           not null, primary key
#  detail     :text(65535)
#  is_done    :boolean          default(FALSE), not null
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
