note
	description: "Summary description for {SECURITY_REQUIREMENT_OBJECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SECURITY_REQUIREMENT_OBJECT

inherit

	SWAGGER_API_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			--initializes a new instance
		do
			initialize
			create values.make
		end

feature -- Access

	field: STRING

	values: LINKED_LIST [STRING]

feature {SWAGGER_VISITOR} -- Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_security_requirement_object (current)
		end

feature

	set_field (f: STRING)
		do
			field := f
		end

end
