video_amounts = gets.to_i
schedule = []
anther = []

video_amounts.times do
    schedule.push(gets.split(' ').map { |i| i.to_i })
end

schedule = schedule.sort { |a,b| a[0] <=> b[0] }

i = 0
views = 1

while i < (video_amounts - 1)
    if schedule[i + 1][0] > schedule[i][0] + schedule[i][1]
        views += 1
    else
        n = i + 2
        while n <= (video_amounts - 1 - i)
            if !schedule[i + n][0].nil?
                if schedule[i + n][0] > schedule[i][0] + schedule[i][1]
                    views += 1
                    i += (n - 1)
                    break
                end
            end
            n += 1
        end
    end
    i += 1
end

p views