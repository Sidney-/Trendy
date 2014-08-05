class Newsletter < ActiveRecord::Base

  # :name, :mail
  email_regex =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,presence: true, length:{maximum:50}
  validates :mail,presence: true ,format: {with:email_regex} , uniqueness: {case_sensitive: false}

  def self.to_csv
    CSV.generate do |csv|

      csv<< column_names

    end
  end

end
