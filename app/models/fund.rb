class Fund < ApplicationRecord
  has_ancestry orphan_strategy: :destroy

  def total_of_all_subs
    sum = 0.0
    if self.has_children?
      self.descendants.each do |c|
        sum += c.amount
      end
    end
    return sum
  end

  def total
    amount + total_of_all_subs
  end
end
