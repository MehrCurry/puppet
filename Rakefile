PUPPETMASTER = 'raspi1'
USER = 'pi'
SSH = 'ssh -t -A'
task :deploy do
sh "git push"
sh "#{SSH} #USER@#{PUPPETMASTER} 'cd /etc/puppet && sudo git pull'"
end


