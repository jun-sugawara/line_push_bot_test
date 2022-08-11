class TrashDay
  def text
    date = Date.today

    case date.strftime('%a')
      when "Mon"
          "今日は月曜日。不燃ゴミの日"
      when "Tue"
          "今日は火曜日。燃えるゴミの日"
      when "Wed"
          "今日は水曜日。ゴミ出しはお休み"
      when "Thu"
          "今日は木曜日。プラごみの日"
      when "Fri"
          "今日は金曜日。燃えるゴミの日"
      when "Sat"
          "今日は土曜日。ゴミ出しはお休み"
      else
          "今日は日曜日！バスケ頑張って！"
      end
  end

end