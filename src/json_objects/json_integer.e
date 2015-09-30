note
	description: "Object representing a json integer"
	author: "Tobias Kaiser"
	date: "$Date$"
	revision: "$Revision$"

class
	JSON_INTEGER

inherit

	JSON_VALUE_OBJECT

create
	make

feature {NONE} -- Initialization

	make (a_value: INTEGER)
		do
			value := a_value
		end

feature -- Access

	value: INTEGER

feature {JSON_VISITOR} --Visitor

	process (v: JSON_VISITOR)
		do
			v.process_json_integer (current)
		end

end
