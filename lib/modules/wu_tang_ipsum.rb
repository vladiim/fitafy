module WuTangIpsum

  WUSTYLE = "Reunited double LP were all excited Struck a match to the underground industry ignited from metaphorical parables to fertilize the Earth Wicked niggaz come try to burglarize the turf Scattin off softass beats them niggaz rap happily Tragically that style deteriate rapidly Uncompleted missions throwin your best known compositions You couldnt add it up if you mastered addition Where I come from, gettin visual is habitual Demonstrate walkin on hot coal in rituals I splash the paint on the wall it formed the mural He took a look saw the manifestation of it was plural Rhymin while impaired dart hit your garment Pierced your internal streamlined compartments Just consider the unparallel advantage Of a natural disaster thats impossible to manage"

  def self.generate
  	start = rand WUSTYLE.length
  	finish = start + (rand(30))
  	WUSTYLE[start..finish].gsub(/\s+/, "")
  end
end