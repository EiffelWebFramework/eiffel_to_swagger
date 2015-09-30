note
	description: "object representing a JSON array"
	author: "Tobias Kaiser"
	date: "$Date$"
	revision: "$Revision$"

class
	JSON_ARRAY [G -> JSON_VALUE_OBJECT]

inherit

	JSON_VALUE_OBJECT

create
	make

feature	{NONE} -- Initialization

	make
		do
			create value.make
		end

feature -- Access

	value: LINKED_LIST [G]

feature {JSON_VISITOR} -- Visitor

	process (v: JSON_VISITOR)
		do
			v.process_json_array (current)
		end

end
