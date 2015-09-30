note
	description: "Object representing a JSON real object"
	author: "Tobias Kaiser"
	date: "$Date$"
	revision: "$Revision$"

class
	JSON_REAL

inherit

	JSON_VALUE_OBJECT

create
	make

feature {NONE} -- Initialization

	make (a_value: REAL)
		do
			value := a_value
		end

feature -- Access

	value: REAL

feature {JSON_VISITOR} -- Visitor

	process (v: JSON_VISITOR)
		do
			v.process_json_real (current)
		end

end
