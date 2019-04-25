class Member < ApplicationRecord
  has_many :numbers
  has_many :projects, through: :numbers

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Member.where(['name LIKE ?', "%#{search}%"])
    else
      Member.all #全て表示。
    end
  end
end
