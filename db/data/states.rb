r_1 = Region.create(name: "Northeast")
r_2 = Region.create(name: "Midwest")
r_3 = Region.create(name: "South")
r_4 = Region.create(name: "West")

Division.create(name: "New England", region_id: r_1.id)
Division.create(name: "Middle Atlantic", region_id: r_1.id)
Division.create(name: "East North Central", region_id: r_2.id)
Division.create(name: "West North Central", region_id: r_2.id)
Division.create(name: "South Atlantic", region_id: r_3.id)
Division.create(name: "East South Central", region_id: r_3.id)
Division.create(name: "West South Central", region_id: r_3.id)
Division.create(name: "Mountain", region_id: r_4.id)
Division.create(name: "Pacific", region_id: r_4.id)

states = [["Connecticut", "New England"]
          ["Maine", "New England"]
          ["Massachusetts", "New England"]
          ["New Hampshire", "New England"]
          ["Rhode Island", "New England"]
          ["Vermont", "New England"]
          ["New Jersey", "Middle Atlantic"]
          ["New York", "Middle Atlantic"]
          ["Pennsylvania", "Middle Atlantic"]
          ["Illinois", "East North Central"]
          ["Indiana", "East North Central"]
          ["Michigan", "East North Central"]
          ["Ohio", "East North Central"]
          ["Wisconsin", "East North Central"]
          ["Iowa", "West North Central"]
          ["Kansas", "West North Central"]
          ["Minnesota", "West North Central"]
          ["Missouri", "West North Central"]
          ["Nebraska", "West North Central"]
          ["North Dakota", "West North Central"]
          ["South Dakota", "West North Central"]
          ["Delaware", "South Atlantic"]
          ["District of Columbia", "South Atlantic"]
          ["Florida", "South Atlantic"]
          ["Georgia", "South Atlantic"]
          ["Maryland", "South Atlantic"]
          ["North Carolina", "South Atlantic"]
          ["South Carolina", "South Atlantic"]
          ["Virginia", "South Atlantic"]
          ["West Virginia", "South Atlantic"]
          ["Alabama", "East South Central"]
          ["Kentucky", "East South Central"]
          ["Mississippi", "East South Central"]
          ["Tennessee", "East South Central"]
          ["Arkansas", "West South Central"]
          ["Louisiana", "West South Central"]
          ["Oklahoma", "West South Central"]
          ["Texas", "West South Central"]
          ["Arizona", "Mountain"]
          ["Colorado", "Mountain"]
          ["Idaho", "Mountain"]
          ["Montana", "Mountain"]
          ["Nevada", "Mountain"]
          ["New Mexico", "Mountain"]
          ["Utah", "Mountain"]
          ["Wyoming", "Mountain"]
          ["Alaska", "Pacific"]
          ["California", "Pacific"]
          ["Hawaii", "Pacific"]
          ["Oregon", "Pacific"]
          ["Washington", "Pacific"]]

states.each do |state, division|
  Division.find_by(name: division).states.create(name: state)
end

# states = [["Connecticut", "New England"], ["Maine", "New England"],["Massachusetts", "New England"], ["New Hampshire", "New England"], ["Rhode Island", "New England"], ["Vermont", "New England"],["New Jersey", "Middle Atlantic"], ["New York", "Middle Atlantic"],["Pennsylvania", "Middle Atlantic"], ["Illinois", "East North Central"], ["Indiana", "East North Central"],["Michigan", "East North Central"], ["Ohio", "East North Central"],["Wisconsin", "East North Central"], ["Iowa", "West North Central"],["Kansas", "West North Central"],["Minnesota", "West North Central"], ["Missouri", "West North Central"], ["Nebraska", "West North Central"],["North Dakota", "West North Central"], ["South Dakota", "West North Central"], ["Delaware", "South Atlantic"],["District of Columbia", "South Atlantic"], ["Florida", "South Atlantic"], ["Georgia", "South Atlantic"],["Maryland", "South Atlantic"],["North Carolina", "South Atlantic"], ["South Carolina", "South Atlantic"], ["Virginia", "South Atlantic"],["West Virginia", "South Atlantic"], ["Alabama", "East South Central"],["Kentucky", "East South Central"],["Mississippi", "East South Central"], ["Tennessee", "East South Central"], ["Arkansas", "West South Central"],["Louisiana", "West South Central"], ["Oklahoma", "West South Central"], ["Texas", "West South Central"], ["Arizona", "Mountain"],["Colorado", "Mountain"], ["Idaho", "Mountain"],["Montana", "Mountain"], ["Nevada", "Mountain"],["New Mexico", "Mountain"], ["Utah", "Mountain"],["Wyoming", "Mountain"], ["Alaska", "Pacific"],["California", "Pacific"], ["Hawaii", "Pacific"], ["Oregon", "Pacific"],["Washington", "Pacific"]]
