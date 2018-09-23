class Fund < ApplicationRecord
    has_ancestry orphan_strategy: :destroy
end
