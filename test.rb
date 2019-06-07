require 'tty-prompt'

prompt = TTY::Prompt.new

graph_name = prompt.ask('What do you want to call your graph?', default: 'eg: Benchmark')
test_method = prompt.select("What do you want to test on?") do |menu|
    menu.choice 'Array'
    menu.choice 'Integers'
    menu.choice 'Strings'
end