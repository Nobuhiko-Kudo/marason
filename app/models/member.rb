class Member < ActiveRecord::Base
  belongs_to :group
  def self.search(name_kana,select_group)
     Member.where('name_kana LIKE ? AND group_id = ?',
                   "%#{name_kana}%",
                   "#{select_group}")
  end

  def self.search_kana(name_kana)
     Member.where('name_kana LIKE ?',
                   "%#{name_kana}%")
  end

  def self.search_group(select_group)
     Member.where('group_id = ?',
                   "#{select_group}")
  end
end
