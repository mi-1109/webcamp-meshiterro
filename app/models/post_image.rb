class PostImage < ApplicationRecord
  belongs_to :user #associationの設定
  attachment :image #画像アップ用のメソッド(attachment)を追加してフィールド名に(image)を追加（refile使用上のルール）
end
