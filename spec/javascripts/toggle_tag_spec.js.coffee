#   describe "sort by tags button", ->
#     it "defaults to hiding the muscle tags", ->
#       expect($(".muscle_tags")).toHaveClass("hidden")

#   describe "click sort by tags button", ->
#     it "removes the hidden class from .muscle_tags", ->
#       $(".sort_by_tags").click()
#       expect($(".muscle_tags")).not.toHaveClass("hidden")

#   describe "clicking a muscles tag", ->
#   	beforeEach ->
#       $(".tag_link").click()

#     it "adds the tag next to the sort by tags button", ->
#       expect($(".primary_tags > .remove_tag_link")).not.toHaveClass("hidden")

#     it "removes the hidden class from the remove_tag_link", ->
#       expect($(".muscle_tags > .remove_tag_link")).not.toHaveClass("hidden")

#     it "adds the hidden class to the tag_link", ->
#       expect($(".tag_link")).toHaveClass("hidden")

#   describe "click tag link then primary tag link", ->
#     beforeEach ->
#       $(".tag_link").click()
#       $(".primary_tags > .remove_tag_link").click()

#     it "adds the hidden class to the primary_tag link", ->
#       expect($(".primary_tags > .remove_tag_link")).toHaveClass("hidden")

#     it "adds the hidden class to remove_tag_link", ->
#       expect($(".muscle_tags > .remove_tag_link")).toHaveClass("hidden")

#     it "removes the hidden class from tag_link", ->
#       expect($(".tag_link")).not.toHaveClass(".hidden")

#   describe "click tag link then remove tag link", ->
#     beforeEach ->
#       $(".tag_link").click()
#       $(".muscle_tags > .remove_tag_link").click()

#     it "adds the hidden class to the primary_tag link", ->
#       expect($(".primary_tags > .remove_tag_link")).toHaveClass("hidden")

#     it "adds the hidden class to remove_tag_link", ->
#       expect($(".muscle_tags > .remove_tag_link")).toHaveClass("hidden")

#     it "removes the hidden class from tag_link", ->
#       expect($(".tag_link")).not.toHaveClass(".hidden")