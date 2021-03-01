class PostImage < ApplicationRecord
  belongs_to :user #associationの設定
  attachment :image #画像アップ用のメソッド(attachment)を追加してフィールド名に(image)を追加（refile使用上のルール）
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

 validates :shop_name, presence: true
 validates :image, presence: true
  #favorited_by?メソッドで、引数で渡されたユーザＩＤがFavoritesテーブル内に存在するか調べる
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
