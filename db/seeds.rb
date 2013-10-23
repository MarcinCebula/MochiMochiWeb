# Admin.create :name => "marcin", :password =>"acegmr123"
# Admin.create :name => "ace", :password =>"acegmr123"

# %w(battlefield_3 borderlands_2 call_of_duty_modern_warfare_2 crysis_2).each do |gamefile|

#   yaml = (YAML::load_file("db/admin/games/#{gamefile}.yml"))['game']

#   game = Admin::Game.new({ :title => yaml['title']})

#   if yaml['n3ds']
#     game.n3ds = Admin::Games::N3ds.new yaml['n3ds']
#   end
#   if yaml['nds']
#     game.nds = Admin::Games::Nds.new yaml['nds']
#   end
#   if yaml['pc']
#     game.pc = Admin::Games::Pc.new yaml['pc']
#   end
#   if yaml['ps3']
#     game.ps3 = Admin::Games::Ps3.new yaml['ps3']
#   end
#   if yaml['ps_vita']
#     game.ps_vita = Admin::Games::PsVita.new yaml['ps_vita']
#   end
#   if yaml['psp']
#     game.psp = Admin::Games::Psp.new yaml['psp']
#   end
#   if yaml['wii']
#     game.wii = Admin::Games::Wii.new yaml['wii']
#   end
#   if yaml['xbox360']
#     game.xbox360 = Admin::Games::Xbox360.new yaml['xbox360']
#   end
#   game.save
# end


# %w(n3ds nds pc ps3 ps_vita psp wii xbox360).each do |console|
#   if yaml[console]
#     current_console =  eval("game.#{console}")
#     current_console = eval("Admin::Games::#{console.camelize}").new yaml[console]
#   end
# end
