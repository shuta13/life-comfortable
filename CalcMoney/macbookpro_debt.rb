subtotal = 360000
tax = 27360
sum = subtotal + tax

p "小計：#{subtotal}"
p "税：#{tax}"
p "合計：#{sum}"

money_down = 60360
sum = sum - money_down
p "頭金後：#{sum}"

pay_par_month = 15000
extra = 12000

p "21回分割：#{pay_par_month}ずつ返済"
p "+#{extra}円余分のため最終月で調整"

month = 4
year = 2019
p "--- #{year}年度 ---"


counter = 0
while true do 
  sum = sum - pay_par_month
  p "#{month}月残額：#{sum}"
  month += 1
  counter += 1
  if month > 12
    month = 1
    year += 1
    p "--- #{year}年度 ---"
  end

  if sum < pay_par_month
    break
  end
end

p "合計#{counter}+1"