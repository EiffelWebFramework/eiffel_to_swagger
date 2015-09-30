note
	description: "Summary description for {EXAMPLE_OBJECT}."
	date: "$Date$"
	revision: "$Revision$"

class
	EXAMPLE_OBJECT

inherit

	SWAGGER_API_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			-- initializes a new instance
		do
			initialize
		end

feature -- Access

	example: ANY
			-- an example object

feature -- Change element

	set_example (a_example: ANY)
			-- sets an example
		do
			example := a_example
		end

feature {SWAGGER_VISITOR} -- Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_example_object (current)
		end

end
