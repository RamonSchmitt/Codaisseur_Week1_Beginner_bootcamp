class Department
  attr_reader :dept_name

  def initialize(dept_name)
    @dept_name = dept_name
  end

  def show_departments
    @dept_name.each do |show|
      puts dept_name
    end
  end

end
