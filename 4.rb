array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202,
         574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
task = 0
while task != 'exit'
  puts 'Enter number of task 1..14'
  task = gets.chomp!
  case task.to_i
    when 1
      #узнать количество элементов в массиве
      puts array.length
      puts '_______________'
    when 2
      #перевернуть массив
      puts array.reverse
      puts '_______________'
    when 3
      #найти наибольшее число
      puts array.max
      puts '_______________'
    when 4
      #найти наименьшее число
      puts array.min
      puts '_______________'
    when 5
      #отсортировать от меньшего к большему
      puts array.sort
      puts '_______________'
    when 6
      #отсортировать от большего к меньшему
      puts array.sort.reverse
      puts '_______________'
    when 7
      #удалить все нечетные числа
      puts array.reject { |i| i % 2 != 0}
      puts '_______________'
    when 8
      #оставить только те числа, которые без остатка делятся на 3
      puts array.select { |i| i % 3 == 0}
      puts '_______________'
    when 9
      #удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
      puts array.uniq
      puts '_______________'
    when 10
      #разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
      puts array.map { |i| i.to_f / 10 }
      puts '_______________'
    when 11
      #получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
      array.each do |i|
        if i<=25
          puts ('a'..'z').to_a[i]
        end
      end
      puts '_______________'
    when 12
      #поменять местами минимальный и максимальный элементы массива
      array.each do |i|
        if i == array.max
          puts array.min
        elsif i == array.min
          puts array.max
        else
          puts i
        end
      end
      puts '_______________'
    when 13
      #найти элементы, которые находятся перед минимальным числом в массиве
      index_min = array.rindex(array.min)
      puts array[0...index_min]
      puts '_______________'
    when 14
      #необходимо найти три наименьших элемента
      puts array.sort.take(3)
      puts '_______________'
    else
      if task != 'exit'
        puts 'Incorrect number of task'
        puts 'If you want stop program, enter \'exit\' '
      end
  end
end