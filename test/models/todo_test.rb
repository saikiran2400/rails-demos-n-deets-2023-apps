# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  description :text
#  due_date    :date
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class TodoTest < ActiveSupport::TestCase

  test "fixtures are valid" do
    todos.each do |todo|
      assert todo.valid?, todo.errors.full_messages.inspect
    end
  end

end
