class CreateJoinTableHashtagsPosts < ActiveRecord::Migration[5.0]
  def change
    create_join_table :hashtags, :posts do |t|
      # t.index [:hashtag_id, :post_id]
      # t.index [:post_id, :hashtag_id]
    end
  end
end
