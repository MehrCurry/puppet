USER = ENV['USER']
CLIENT = ENV['CLIENT']
SSH = 'ssh -t -A'
task :deploy do
sh "git push"
sh "#{SSH} #{USER}@#{CLIENT} 'cd /etc/puppet && sudo git pull'"
end

task :apply => [:deploy] do
sh "#{SSH} #{USER}@#{CLIENT} 'sudo puppet apply -v --modulepath /etc/puppet/modules /etc/puppet/manifests/site.pp'" do |ok, status|
puts case status.exitstatus
when 0 then 'Client is up to date.'
when 1 then 'Puppet could not compile manifest.'
when 2 then 'Puppet made changes'
when 3 then 'Puppet found errors'
end
end 
end


task :noop => [:deploy] do
sh "#{SSH} #{USER}@#{CLIENT} 'sudo puppet apply --noop --modulepath /etc/puppet/modules /etc/puppet/manifests/site.pp'"
end

