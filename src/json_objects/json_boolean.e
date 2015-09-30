note
	description: "object representing a JSON boolean value"
	date: "$Date$"
	revision: "$Revision$"

class
	JSON_BOOLEAN

inherit

	JSON_VALUE_OBJECT

create
	make

feature	{NONE} -- Initialization

	make (a_value: BOOLEAN)
		do
			value := a_value
		end

feature -- Access

	value: BOOLEAN

feature {JSON_VISITOR} -- Visitor

	process (v: JSON_VISITOR)
		do
			v.process_json_boolean (current)
		end

end
