note
	description: "Summary description for {PATHS_OBJECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PATHS_OBJECT

inherit

	SWAGGER_API_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			--initialize new instance
		do
			initialize
			create paths.make (51)
		end

feature -- Access

	paths: HASH_TABLE [PATH_ITEM_OBJECT, STRING]

feature {SWAGGER_VISITOR}  -- Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_paths_object (current)
		end

end
