class Code < ActiveRecord::Base  
  validates_presence_of :code, :address, :message => "can't be empty"
  validates_uniqueness_of :code
  validates_format_of :code, :with => /\A[A-Za-z\d_]+\Z/, :message => "can only contain letters, numbers and '_' (no spaces)"

  def to_param
    code
  end
end
