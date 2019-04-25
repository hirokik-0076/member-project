class Member < ApplicationRecord
  has_many :members_projects
  has_many :projects, through: :members_projects

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Member.where(['name LIKE ?', "%#{search}%"])
    else
      Member.all #全て表示。
    end
  end
end
