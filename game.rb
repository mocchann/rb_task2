puts "じゃ〜んけ〜んっ、、、"

janken =1
win_amh = 1
lose_amh = 1

# じゃんけん
while janken == 1 do
  
  puts "0(グー) 1(チョキ) 2(パー)"

  my_hand = gets.to_i
  oppo_hand = rand(3)
  array = ["グー！","チョキ！","パー！"]

  puts "ホイ！"
  puts "----------"
  puts "自分：#{array[my_hand]},相手：#{array[oppo_hand]}"


  if my_hand == oppo_hand
    puts "あ~い~こでっ、、、"
    puts"----------"
    janken =1
    
    # 自分が勝ちのあっち向いてホイ
  elsif (my_hand == 0 && oppo_hand == 1) || (my_hand == 1 && oppo_hand == 2) || (my_hand == 2 && oppo_hand == 0)
    win_amh = 1
    while win_amh == 1 do
      puts "あっち向いて〜っ、、、"
      puts "0(上) 1(右) 2(下) 3(左)"
      
      my_direction = gets.to_i
      oppo_direction = rand(4)
      direction = ["上","右","下","左"]

      puts "ホイ！"
      puts "----------"
      print "自分：#{direction[my_direction]},相手：#{direction[oppo_direction]}>"


      if my_direction == oppo_direction
        print "自分の勝ち！"
        janken = 2
        win_amh = 2
      else
        puts "じゃ〜んけ〜んっ、、、"
        janken = 1
        win_amh = 2
      end
    end
    
    # 相手が勝ちのあっち向いてホイ
  elsif(my_hand == 0 && oppo_hand == 2) || (my_hand == 1 && oppo_hand == 0) || (my_hand == 2 && oppo_hand == 1)
    lose_amh = 1
    while lose_amh == 1 do
      puts "あっち向いて〜っ、、、"
      puts "0(上) 1(右) 2(下) 3(左)"
      
      my_direction = gets.to_i
      oppo_direction = rand(4)
      direction = ["上","右","下","左"]

      puts "ホイ！"
      puts "----------"
      print "自分：#{direction[my_direction]},相手：#{direction[oppo_direction]}>"


      if my_direction == oppo_direction
        print "相手の勝ち！"
        janken = 2
        lose_amh = 2
      else
        puts "じゃ〜んけ〜んっ、、、"
        janken = 1
        lose_amh = 2
      end
    end
  end
end