my_var = "成功"

class MyClass
  # スコープゲートによりmy_varは呼び出せない
  def my_method
  # スコープゲートによりmy_varは呼び出せない
  end
end

YourClass = Class.new do
  # my_varを表示できる
  puts "クラス定義の中では#{my_var}"

  define_method :my_method do
    # Module#define_methodの中なら呼び出せる
    puts "メソッド定義の中でも#{my_var}"
  end

end
