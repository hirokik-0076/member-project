class Project < ApplicationRecord
  has_many :members_projects
  has_many :members, through: :members_projects

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Project.where(['name LIKE ?', "%#{search}%"])
    else
      Project.all #全て表示。
    end
  end
end
