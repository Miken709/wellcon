class StateUpdate
  def self.run

    loop{
      sleep(1)
    File.open("cron.log","w") do |file|
      file.puts("[#{DateTime.now.to_s}]: run")
    end
#=begin
    Device.all.each do |d|
      d.update_state!
    end
#=end
  }
  end
end
