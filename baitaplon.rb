class Travel
    @@name={}
    $total_expense=0
    def initialize(spending, amounts)
      @spending=spending
      @amounts=amounts
      @@name[spending]=amounts
      $total_expense+=amounts
    end
    def name
      @@name
    end
    
  end
   
  anh=Travel.new("gas",20)
  anh=Travel.new("rent",40)
  anh=Travel.new("groceries",70)
  kien=Travel.new("gas",20)
  sum=0
  anh.name.each do |key,value|
            sum+=anh.name[key]
            end
  puts sum
  $total_expense