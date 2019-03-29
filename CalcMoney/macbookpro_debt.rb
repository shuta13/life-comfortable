subtotal = 320400
tax = 24192
sum = subtotal + tax

p "小計：#{subtotal}"
p "税：#{tax}"
p "合計：#{sum}"

discount = 22000
sum = sum - discount
p "学割後：#{sum}"

money_down = 60000
sum = sum - money_down
p "頭金後：#{sum}"

pay_par_month = 11000
extra = 1408

p "24回分割：#{sum / 24}のため、#{pay_par_month}ずつ返済"
p "+#{extra}円余分のため最終月で調整"
p '=> ' + ((sum + extra) == (pay_par_month * 24)).to_s

month = 4
year = 2019
p "--- #{year}年度 ---"

while true do 
  sum = sum - pay_par_month
  p "#{month}月残額：#{sum}"
  month += 1
  if month > 12
    month = 1
    year += 1
    p "--- #{year}年度 ---"
  end

  if sum < pay_par_month
    break
  end
end

