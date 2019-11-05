def echo_name(prompt_name)
  fname, lname = prompt_name

  puts "Hello #{fname} of #{lname}"
rescue
  puts "Please only use two names."
  retry
end
